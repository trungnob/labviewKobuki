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
static const double  levelThreshold = 7;		// inclinations below this value are considered level ground, in deg
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
	
///DO NOTHING 
	*pLeftWheelSpeed = 0;
	*pRightWheelSpeed = 0;
}
