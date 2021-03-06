/*
* irobotNavigationStatechart.c
*
*  Created on: 2014-06-01
*  Author: Jeff C. Jensen
*/

#include "kobukiNavigationStatechart.h"
#include <math.h>
#include <stdlib.h>

// Program States
typedef enum{
	INITIAL = 0,						// Initial state
	PAUSE_WAIT_BUTTON_RELEASE,			// Paused; pause button pressed down, wait until released before detecting next press
	UNPAUSE_WAIT_BUTTON_PRESS,			// Paused; wait for pause button to be pressed
	UNPAUSE_WAIT_BUTTON_RELEASE,		// Paused; pause button pressed down, wait until released before returning to previous state
	DRIVE,								// Drive straight
	CLIMB,								// Climb uphill
	AVOID,								// Avoid an obstacle
	REORIENT							// Reorient after obstacle avoidance
} robotState_t;

#define DEG_PER_RAD			(180.0 / M_PI)		// degrees per radian
#define RAD_PER_DEG			(M_PI / 180.0)		// radians per degree

// state data
static const double  hillThreshold = 10;		// inclinations above this value are considered a hill, in deg
static const double  levelThreshold = 8;		// inclinations below this value are considered level ground, in deg
static const int16_t driveSpeed = 160;			// normal drive speed, in mm/s
static const int16_t reorientSpeed = 120;		// reorient speed, in mm/s
//static const int32_t avoidDistance = 250;		// distance to travel in avoidance algorithm before reorienting
//static const int32_t reorientTolerance = 2;		// tolerance for reorienting robot, in deg
static const int32_t avoidDistance = 130;		// distance to travel in avoidance algorithm before reorienting
static const int32_t reorientTolerance = 3;		// tolerance for reorienting robot, in deg
static double tiltCorrection = 0.0;				// tilt correction, calibrates xy orientation of accelerometer, in deg

typedef enum{
	LEFT,
	RIGHT
} obstacleDirection_t;							// Direction of an encountered obstacle

void KobukiNavigationStatechart(
	const int16_t 				maxWheelSpeed,
	const int32_t 				netDistance,
	const int32_t 				netAngle,
	const KobukiSensors_t		sensors,
	const accelerometer_t			accelAxes,
	int16_t * const 			pRightWheelSpeed,
	int16_t * const 			pLeftWheelSpeed,
	const bool					isSimulator
	){
	
	// local state
	static robotState_t 		state = INITIAL;				// current program state
	static robotState_t			unpausedState = DRIVE;			// state history for pause region
	static obstacleDirection_t	obstacleDirection = LEFT;		// direction of an obstacle to avoid
	static int32_t				distanceAtManeuverStart = 0;	// distance robot had travelled when a maneuver begins, in mm
	static int32_t				angleAtManeuverStart = 0;		// angle through which the robot had turned when a maneuver begins, in deg

	// local data
	double						inclination = 0;				// inclination of the robot, in deg
	double						tilt = 0;						// tilt of the robot, in deg

	// outputs
	int16_t						leftWheelSpeed = 0;				// speed of the left wheel, in mm/s
	int16_t						rightWheelSpeed = 0;			// speed of the right wheel, in mm/s

	/******************************************************/
	// state data - process inputs
	/******************************************************/
	inclination = sqrt(accelAxes.x*accelAxes.x + accelAxes.y*accelAxes.y) * 90.0;
	tilt = atan2(accelAxes.y, accelAxes.x) * DEG_PER_RAD + tiltCorrection;

	/******************************************************/
	// state transition - pause region (highest priority)
	/******************************************************/
	if (state == INITIAL
		|| state == PAUSE_WAIT_BUTTON_RELEASE
		|| state == UNPAUSE_WAIT_BUTTON_PRESS
		|| state == UNPAUSE_WAIT_BUTTON_RELEASE
		|| sensors.buttons.B0				// pause button
		){
		switch (state){
		case INITIAL:
			// set state data that may change between simulation and real-world
			if (isSimulator){
				tiltCorrection = 0;
			}
			else{
				tiltCorrection = 0;
			}
			state = UNPAUSE_WAIT_BUTTON_PRESS; // place into pause state
			break;
		case PAUSE_WAIT_BUTTON_RELEASE:
			// remain in this state until released before detecting next press
			if (!sensors.buttons.B0){
				state = UNPAUSE_WAIT_BUTTON_PRESS;
			}
			break;
		case UNPAUSE_WAIT_BUTTON_RELEASE:
			// user pressed 'pause' button to return to previous state
			if (!sensors.buttons.B0){
				state = unpausedState;
			}
			break;
		case UNPAUSE_WAIT_BUTTON_PRESS:
			// remain in this state until user presses 'pause' button
			if (sensors.buttons.B0){
				state = UNPAUSE_WAIT_BUTTON_RELEASE;
			}
			break;
		default:
			// must be in run region, and pause button has been pressed
			unpausedState = state;
			state = PAUSE_WAIT_BUTTON_RELEASE;
			break;
		}
	}
	/////////////////////////////////////////
	// state transition - obstacle region  //
	/////////////////////////////////////////
	else if (sensors.bumps_wheelDrops.bumpLeft
		|| sensors.bumps_wheelDrops.bumpRight
		|| sensors.bumps_wheelDrops.wheeldropLeft
		|| sensors.bumps_wheelDrops.wheeldropRight
		|| sensors.cliffLeft
		|| sensors.cliffCenter
		|| sensors.cliffRight
		){
		// obstacle encountered
		distanceAtManeuverStart = netDistance;
		if (state != AVOID && state != REORIENT){
			// first obstacle encountered; record orientation
			angleAtManeuverStart = netAngle;
			state = AVOID;
		}

		// set avoid direction
		if (sensors.cliffLeft
			|| sensors.bumps_wheelDrops.bumpCenter
			|| sensors.bumps_wheelDrops.wheeldropLeft
			|| sensors.cliffCenter
			){
			obstacleDirection = LEFT;
		}
		else{
			obstacleDirection = RIGHT;
		}
	}
	else if (state == AVOID && abs(netDistance - distanceAtManeuverStart) >= avoidDistance){
		// obstacle avoidance complete; reorient
		state = REORIENT;
	}
	else if (state == REORIENT && abs(netAngle - angleAtManeuverStart) <= reorientTolerance){
		// reoriented, return to drive state
		state = DRIVE;
	}
	/**********************************/
	// state transition - run region
	/**********************************/
	else if (state == DRIVE && inclination > hillThreshold){
		// on an incline
		state = CLIMB;
	}
	else if (state == CLIMB && inclination < levelThreshold){
		// on level ground
		state = DRIVE;
	}
	// else, no transitions are taken

	/////////////////////////////////////////
	//             state actions           //
	/////////////////////////////////////////
	switch (state){
	case INITIAL:
	case PAUSE_WAIT_BUTTON_RELEASE:
	case UNPAUSE_WAIT_BUTTON_PRESS:
	case UNPAUSE_WAIT_BUTTON_RELEASE:
		// in pause mode, robot should be stopped
		leftWheelSpeed = rightWheelSpeed = 0;
		break;

	case AVOID:
		// avoid an obstacle by backing up and away
		if (obstacleDirection == LEFT){
			leftWheelSpeed = -driveSpeed;
			rightWheelSpeed = -(driveSpeed >> 4);
		}
		else{
			leftWheelSpeed = -(driveSpeed >> 4);
			rightWheelSpeed = -driveSpeed;
		}
		break;

	case REORIENT:
		// set direction of rotation for shortest path
		if (angleAtManeuverStart - netAngle > 0){
			leftWheelSpeed = -reorientSpeed;
			rightWheelSpeed = reorientSpeed;
		}
		else{
			leftWheelSpeed = reorientSpeed;
			rightWheelSpeed = -reorientSpeed;
		}
		break;

	case DRIVE:
		// full speed ahead!
		leftWheelSpeed = rightWheelSpeed = driveSpeed;
		break;

	case CLIMB:
		// proportional controller
		leftWheelSpeed = (int16_t)((double)driveSpeed * sin((45 + tilt) * RAD_PER_DEG));
		rightWheelSpeed = (int16_t)((double)driveSpeed * cos((45 + tilt) * RAD_PER_DEG));
		break;

	default:
		// Unknown state
		leftWheelSpeed = rightWheelSpeed = 0;
		break;
	}

	// write outputs
	*pLeftWheelSpeed = leftWheelSpeed;
	*pRightWheelSpeed = rightWheelSpeed;
}
