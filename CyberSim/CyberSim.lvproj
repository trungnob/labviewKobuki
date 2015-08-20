<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
	<Property Name="CCSymbols" Type="Str"></Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.Project.Description" Type="Str">This example demonstrates how to control a simulated iRobot Create.</Property>
	<Property Name="SMProvider.SMVersion" Type="Int">201310</Property>
	<Property Name="varPersistentID:{39518AE8-B921-485D-AF3B-7663B4E6A927}" Type="Ref">/My Computer/iRobot/Remote Control Sensors.lvlib/Sensors In</Property>
	<Property Name="varPersistentID:{5CCC9768-8779-47FA-8128-A406E2128333}" Type="Ref">/My Computer/iRobot/Remote Control Sensors.lvlib/Sensors Out</Property>
	<Property Name="varPersistentID:{E845612E-9AF3-4FCA-BDC4-28B26EC72E65}" Type="Ref">/My Computer/iRobot/Remote Control Sensors.lvlib/Stop</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="autograder" Type="Folder">
			<Item Name="agLabviewFinalize.vi" Type="VI" URL="../autograder/agLabviewFinalize.vi"/>
			<Item Name="agLabviewGetErrorStatus.vi" Type="VI" URL="../autograder/agLabviewGetErrorStatus.vi"/>
			<Item Name="agLabviewGetNextTest.vi" Type="VI" URL="../autograder/agLabviewGetNextTest.vi"/>
			<Item Name="agLabviewGetReport.vi" Type="VI" URL="../autograder/agLabviewGetReport.vi"/>
			<Item Name="agLabviewInitialize.vi" Type="VI" URL="../autograder/agLabviewInitialize.vi"/>
			<Item Name="agLabviewInteractiveStatechartCalled.vi" Type="VI" URL="../autograder/agLabviewInteractiveStatechartCalled.vi"/>
			<Item Name="agLabviewInteractiveTimeAdvanced.vi" Type="VI" URL="../autograder/agLabviewInteractiveTimeAdvanced.vi"/>
			<Item Name="agLabviewIsTestQueueEmpty.vi" Type="VI" URL="../autograder/agLabviewIsTestQueueEmpty.vi"/>
			<Item Name="agLabviewSimulationRecorded.vi" Type="VI" URL="../autograder/agLabviewSimulationRecorded.vi"/>
			<Item Name="agLabviewUpdateConsole.vi" Type="VI" URL="../autograder/agLabviewUpdateConsole.vi"/>
			<Item Name="feedbackMode.ctl" Type="VI" URL="../autograder/feedbackMode.ctl"/>
			<Item Name="libAgLabviewPath.vi" Type="VI" URL="../autograder/libAgLabviewPath.vi"/>
		</Item>
		<Item Name="build dependencies" Type="Folder">
			<Item Name="LVODE.dll" Type="Document" URL="/&lt;resource&gt;/LVODE.dll"/>
			<Item Name="ode.dll" Type="Document" URL="/&lt;resource&gt;/ode.dll"/>
			<Item Name="labview.lib" Type="Document" URL="../../../../../../Program Files (x86)/National Instruments/LabVIEW 2014/cintools/labview.lib"/>
			<Item Name="labviewv.lib" Type="Document" URL="../../../../../../Program Files (x86)/National Instruments/LabVIEW 2014/cintools/labviewv.lib"/>
		</Item>
		<Item Name="CyberSim interface" Type="Folder">
			<Item Name="Simulation Configuration.ctl" Type="VI" URL="../../CyberSim interface/Simulation Configuration.ctl"/>
		</Item>
		<Item Name="environments" Type="Folder">
			<Item Name="Environment - Multi Robot Environement Test" Type="Robotics Environment Simulator">
				<Item Name="Environment - Multi Robot Environement Test.xml" Type="Document" URL="../Environment - Multi Robot Environement Test.xml"/>
				<Item Name="Environment - Multi Robot Environement Test.vi" Type="VI" URL="../Environment - Multi Robot Environement Test.vi"/>
				<Item Name="Environment - Multi Robot Environement Test ID List.txt" Type="Document" URL="../Environment - Multi Robot Environement Test ID List.txt"/>
			</Item>
		</Item>
		<Item Name="iRobot" Type="Folder" URL="../../iRobot">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="shared" Type="Folder" URL="../../shared">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="simulation" Type="Folder" URL="../simulation">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="system" Type="Folder">
			<Item Name="Command-Line Get Boolean Key.vi" Type="VI" URL="../../system/Command-Line Get Boolean Key.vi"/>
			<Item Name="Command-Line Get Numeric Key.vi" Type="VI" URL="../../system/Command-Line Get Numeric Key.vi"/>
			<Item Name="Command-Line Get String Key.vi" Type="VI" URL="../../system/Command-Line Get String Key.vi"/>
			<Item Name="Command-Line Parse All.vi" Type="VI" URL="../../system/Command-Line Parse All.vi"/>
			<Item Name="Path Resolve.vi" Type="VI" URL="../../system/Path Resolve.vi"/>
		</Item>
		<Item Name="Multi Bot Code" Type="Folder" URL="../Multi Bot Code">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Kobuki" Type="Folder" URL="../../Kobuki">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="CyberSim.vi" Type="VI" URL="../CyberSim.vi"/>
		<Item Name="environments readme.txt" Type="Document" URL="../environments readme.txt"/>
		<Item Name="CPS Grader v0.4 README" Type="Document" URL="../CPS Grader v0.4 README"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="DC Motor Controller.lvclass" Type="LVClass" URL="/&lt;instrlib&gt;/DC Motor Controller/HAIOL/DC Motor Controller.lvclass"/>
				<Item Name="DC Motor Controller Simulator.lvclass" Type="LVClass" URL="/&lt;instrlib&gt;/DC Motor Controller/HAIOL/Simulator/DC Motor Controller Simulator.lvclass"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Empty Picture" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Empty Picture"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="FindCloseTagByName.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindCloseTagByName.vi"/>
				<Item Name="FindElement.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindElement.vi"/>
				<Item Name="FindElementStartByName.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindElementStartByName.vi"/>
				<Item Name="FindEmptyElement.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindEmptyElement.vi"/>
				<Item Name="FindFirstTag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindFirstTag.vi"/>
				<Item Name="FindMatchingCloseTag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindMatchingCloseTag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="MD5Checksum core.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/MD5Checksum.llb/MD5Checksum core.vi"/>
				<Item Name="MD5Checksum File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/MD5Checksum.llb/MD5Checksum File.vi"/>
				<Item Name="MD5Checksum format message-digest.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/MD5Checksum.llb/MD5Checksum format message-digest.vi"/>
				<Item Name="MD5Checksum pad.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/MD5Checksum.llb/MD5Checksum pad.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
				<Item Name="ParseXMLFragments.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/ParseXMLFragments.vi"/>
				<Item Name="Read From XML File(array).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File(array).vi"/>
				<Item Name="Read From XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File(string).vi"/>
				<Item Name="Read From XML File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File.vi"/>
				<Item Name="SCRT Dbg Rtn.vi" Type="VI" URL="/&lt;vilib&gt;/Statechart/Infrastructure/RTStatechart/Dbg/SCRT Dbg Rtn.vi"/>
				<Item Name="SCRT SDV Rtn.vi" Type="VI" URL="/&lt;vilib&gt;/Statechart/Infrastructure/RTStatechart/Dbg/SCRT SDV Rtn.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Write to XML File(array).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File(array).vi"/>
				<Item Name="Write to XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File(string).vi"/>
				<Item Name="Write to XML File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File.vi"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_AAL_Angle.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AAL_Angle.lvlib"/>
				<Item Name="NI_AALBLAS.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBLAS.lvlib"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="nisyscfg.lvlib" Type="Library" URL="/&lt;vilib&gt;/nisyscfg/nisyscfg.lvlib"/>
				<Item Name="Path To Command Line String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/Path To Command Line String.vi"/>
				<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Generate Temporary File Path.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="NI_Unzip.lvlib" Type="Library" URL="/&lt;vilib&gt;/zip/NI_Unzip.lvlib"/>
				<Item Name="Create Directory Recursive.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Create Directory Recursive.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="PathToUNIXPathString.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/CFURL.llb/PathToUNIXPathString.vi"/>
				<Item Name="NI_Kinematics.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Kinematics/NI_Kinematics.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="NI_Robotics_Simulator.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Simulator/NI_Robotics_Simulator.lvlib"/>
				<Item Name="LV3DPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LV3DPointTypeDef.ctl"/>
				<Item Name="NI_3D Picture Control.lvlib" Type="Library" URL="/&lt;vilib&gt;/picture/3D Picture Control/NI_3D Picture Control.lvlib"/>
				<Item Name="Dflt Data Dir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Dflt Data Dir.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="NI_Robotics Utilities.lvlib" Type="Library" URL="/&lt;vilib&gt;/Robotics/Utilities/NI_Robotics Utilities.lvlib"/>
				<Item Name="Read Characters From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Characters From File.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_AngleManipulation.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/AngleManip/NI_AngleManipulation.lvlib"/>
				<Item Name="RGB to Color.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/RGB to Color.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="LVRGBAColorTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRGBAColorTypeDef.ctl"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
				<Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
				<Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
				<Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
				<Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="NI_Robotics_Mecanum Wheel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Robotics/Steering/Mecanum Wheel/NI_Robotics_Mecanum Wheel.lvclass"/>
				<Item Name="NI_Robotics_Wheel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Robotics/Steering/Wheel/NI_Robotics_Wheel.lvclass"/>
				<Item Name="NI_Robotics_Motor Communication.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Robotics/Actuation/Motor Communication/NI_Robotics_Motor Communication.lvclass"/>
				<Item Name="NI_Robotics_Motor Communication Ref.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Robotics/Actuation/Motor Communication Ref/NI_Robotics_Motor Communication Ref.lvclass"/>
				<Item Name="NI_Robotics_Motor Communication Val.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Robotics/Actuation/Motor Communication Val/NI_Robotics_Motor Communication Val.lvclass"/>
				<Item Name="NI_Robotics_Fixed Wheel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Robotics/Steering/Fixed Wheel/NI_Robotics_Fixed Wheel.lvclass"/>
				<Item Name="NI_Robotics_Steering Wheel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Robotics/Steering/Steering Wheel/NI_Robotics_Steering Wheel.lvclass"/>
				<Item Name="NI_Robotics_Caster Wheel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Robotics/Steering/Caster Wheel/NI_Robotics_Caster Wheel.lvclass"/>
				<Item Name="NI_Robotics_Omnidirectional Wheel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Robotics/Steering/Omnidirectional Wheel/NI_Robotics_Omnidirectional Wheel.lvclass"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="NI_SC_LVSCCommonFiles.lvlib" Type="Library" URL="/&lt;vilib&gt;/Statechart/Common/NI_SC_LVSCCommonFiles.lvlib"/>
				<Item Name="New Zip File.vi" Type="VI" URL="/&lt;vilib&gt;/zip/New Zip File.vi"/>
				<Item Name="Close Zip File.vi" Type="VI" URL="/&lt;vilib&gt;/zip/Close Zip File.vi"/>
				<Item Name="Compare Two Paths.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Compare Two Paths.vi"/>
				<Item Name="Add File to Zip.vi" Type="VI" URL="/&lt;vilib&gt;/zip/Add File to Zip.vi"/>
				<Item Name="Relative Path To Platform Independent String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/Relative Path To Platform Independent String.vi"/>
				<Item Name="UART.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/UART/UART.lvlib"/>
				<Item Name="VISA Flush IO Buffer Mask.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Flush IO Buffer Mask.ctl"/>
			</Item>
			<Item Name="lvblas.dll" Type="Document" URL="/&lt;resource&gt;/lvblas.dll"/>
			<Item Name="LVODE.dll" Type="Document" URL="LVODE.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="provcom_GenerateGUID.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Common/provcom_GenerateGUID.vi"/>
			<Item Name="mxLvGenerateGuid.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGenerateGuid.vi"/>
			<Item Name="mxLvProvider.mxx" Type="Document" URL="/&lt;resource&gt;/Framework/Providers/mxLvProvider.mxx"/>
			<Item Name="mxLvErrorHandler.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvErrorHandler.vi"/>
			<Item Name="mxLvDebugDisplayCaller.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvDebugDisplayCaller.vi"/>
			<Item Name="ode.dll" Type="Document" URL="ode.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nisyscfg.dll" Type="Document" URL="nisyscfg.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Kobuki_datatstream_parsingState.ctl" Type="VI" URL="../../../Downloads/WinthropKobukiRIO/Trung/Kobuki_datatstream_parsingState.ctl"/>
			<Item Name="RobotOpen.vi" Type="VI" URL="../../system/RobotOpen.vi"/>
			<Item Name="RobotType.ctl" Type="VI" URL="../../system/RobotType.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="CyberSim.exe" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{EC807AC4-9683-4C56-A6DC-869038F9DA12}</Property>
				<Property Name="App_INI_GUID" Type="Str">{7F7CC51A-B12A-4189-B8C6-219A8A9A0DD0}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{1DC7D3B5-D2E4-4579-84D7-99490CB7F34F}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">CyberSim.exe</Property>
				<Property Name="Bld_compilerOptLevel" Type="Int">0</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/CyberSim.exe</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{A8563109-BAD7-4FC0-BE24-2531E02D9613}</Property>
				<Property Name="Bld_version.build" Type="Int">94</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">CyberSim.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/CyberSim.exe/CyberSim.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/CyberSim.exe/data</Property>
				<Property Name="Destination[2].destName" Type="Str">Environments</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/NI_AB_PROJECTNAME/CyberSim.exe/Environments</Property>
				<Property Name="Destination[3].destName" Type="Str">top-level (non-preserved)</Property>
				<Property Name="Destination[3].path" Type="Path">../builds/NI_AB_PROJECTNAME/CyberSim.exe/top-level (non-preserved)</Property>
				<Property Name="DestinationCount" Type="Int">4</Property>
				<Property Name="Exe_cmdLineArgs" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{75E1958E-F298-465B-851D-DCE0923874B3}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[1].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/environments</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">Container</Property>
				<Property Name="Source[2].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">3</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/build dependencies</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/CyberSim.vi</Property>
				<Property Name="Source[3].properties[0].type" Type="Str">Window has title bar</Property>
				<Property Name="Source[3].properties[0].value" Type="Bool">true</Property>
				<Property Name="Source[3].properties[1].type" Type="Str">Show menu bar</Property>
				<Property Name="Source[3].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[3].properties[2].type" Type="Str">Show vertical scroll bar</Property>
				<Property Name="Source[3].properties[2].value" Type="Bool">false</Property>
				<Property Name="Source[3].properties[3].type" Type="Str">Show horizontal scroll bar</Property>
				<Property Name="Source[3].properties[3].value" Type="Bool">false</Property>
				<Property Name="Source[3].properties[4].type" Type="Str">Allow debugging</Property>
				<Property Name="Source[3].properties[4].value" Type="Bool">false</Property>
				<Property Name="Source[3].propertiesCount" Type="Int">5</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[4].Container.applySaveSettings" Type="Bool">true</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/autograder</Property>
				<Property Name="Source[4].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[4].properties[0].value" Type="Bool">true</Property>
				<Property Name="Source[4].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[4].properties[1].value" Type="Bool">true</Property>
				<Property Name="Source[4].properties[2].type" Type="Str">Allow debugging</Property>
				<Property Name="Source[4].properties[2].value" Type="Bool">true</Property>
				<Property Name="Source[4].propertiesCount" Type="Int">3</Property>
				<Property Name="Source[4].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">5</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_fileDescription" Type="Str">CyberSim.exe</Property>
				<Property Name="TgtF_internalName" Type="Str">CyberSim.exe</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2013 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">CyberSim.exe</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{4F58FF14-58B3-4622-9D21-561D083DB6F6}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">CyberSim.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
