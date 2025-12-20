<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
	<Item Name="My Computer" Type="My Computer">
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
		<Item Name="Controls" Type="Folder">
			<Item Name="Sequence States.ctl" Type="VI" URL="../Controls/Sequence States.ctl"/>
			<Item Name="Console Manager Functions.ctl" Type="VI" URL="../Controls/Console Manager Functions.ctl"/>
		</Item>
		<Item Name="SubVIs" Type="Folder">
<<<<<<< HEAD
			<Item Name="Run Sequence.vi" Type="VI" URL="../SubVIs/Run Sequence.vi"/>
			<Item Name="Read PCBAID.vi" Type="VI" URL="../SubVIs/Read PCBAID.vi"/>
			<Item Name="Read FW Version.vi" Type="VI" URL="../SubVIs/Read FW Version.vi"/>
			<Item Name="Call Geneaology Script.vi" Type="VI" URL="../SubVIs/Call Geneaology Script.vi"/>
			<Item Name="BC Wrapper.vi" Type="VI" URL="../SubVIs/BC Wrapper.vi"/>
			<Item Name="Display Results.vi" Type="VI" URL="../SubVIs/Display Results.vi"/>
			<Item Name="Update Console.vi" Type="VI" URL="../SubVIs/Update Console.vi"/>
			<Item Name="Global Variable.vi" Type="VI" URL="../SubVIs/Global Variable.vi"/>
			<Item Name="Get FW Path.vi" Type="VI" URL="../SubVIs/Get FW Path.vi"/>
			<Item Name="Save Console Logs.vi" Type="VI" URL="../SubVIs/Save Console Logs.vi"/>
			<Item Name="Format SN PN.vi" Type="VI" URL="../SubVIs/Format SN PN.vi"/>
=======
			<Item Name="Lunar Libraries" Type="Folder">
				<Item Name="PCAN Reader.lvlib" Type="Library" URL="../SubVIs/Lunar Libraries/PCAN Reader/PCAN Reader.lvlib"/>
				<Item Name="Lunar UDS CAN.lvlib" Type="Library" URL="../SubVIs/Lunar Libraries/UDS CAN/Lunar UDS CAN.lvlib"/>
			</Item>
			<Item Name="BC Wrapper.vi" Type="VI" URL="../SubVIs/BC Wrapper.vi"/>
			<Item Name="Display Results.vi" Type="VI" URL="../SubVIs/Display Results.vi"/>
			<Item Name="Run Sequence.vi" Type="VI" URL="../SubVIs/Run Sequence.vi"/>
			<Item Name="Genealogy.vi" Type="VI" URL="../SubVIs/Genealogy.vi"/>
			<Item Name="Update Console.vi" Type="VI" URL="../SubVIs/Update Console.vi"/>
			<Item Name="Global Variable.vi" Type="VI" URL="../SubVIs/Global Variable.vi"/>
>>>>>>> badce051dd3382cdf9f917f29ddfeb90acdf039c
		</Item>
		<Item Name="Supporting Files" Type="Folder">
			<Item Name="BootCommander.exe" Type="Document" URL="../Supporting Files/BootCommander.exe"/>
			<Item Name="IPC_boot_P4toP5_Converter.srec" Type="Document" URL="../Supporting Files/IPC_boot_P4toP5_Converter.srec"/>
			<Item Name="IPC_boot_P4_C1_ota.srec" Type="Document" URL="../Supporting Files/IPC_boot_P4_C1_ota.srec"/>
			<Item Name="IPC_app_ota_P5_C1_rc_25.31.07.srec" Type="Document" URL="../Supporting Files/IPC_app_ota_P5_C1_rc_25.31.07.srec"/>
			<Item Name="IPC_boot_P5_C1_ota.srec" Type="Document" URL="../Supporting Files/IPC_boot_P5_C1_ota.srec"/>
		</Item>
<<<<<<< HEAD
		<Item Name="Data" Type="Folder">
			<Item Name="Config.ini" Type="Document" URL="../Data/Config.ini"/>
			<Item Name="SampleLog.txt" Type="Document" URL="../Logs/SampleLog.txt"/>
		</Item>
		<Item Name="Python" Type="Folder">
			<Item Name="read_pcbaid.py" Type="Document" URL="../Python/read_pcbaid.py"/>
			<Item Name="uds_ping.py" Type="Document" URL="../Python/uds_ping.py"/>
			<Item Name="write_read_pnsn.py" Type="Document" URL="../Python/write_read_pnsn.py"/>
			<Item Name="read_uds.py" Type="Document" URL="../Python/read_uds.py"/>
			<Item Name="read_versions.py" Type="Document" URL="../Python/read_versions.py"/>
		</Item>
=======
>>>>>>> badce051dd3382cdf9f917f29ddfeb90acdf039c
		<Item Name="IPC Flasher Main.vi" Type="VI" URL="../IPC Flasher Main.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="dotnet_system_exec.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/JKI/JKI DotNet System Exec/dotnet_system_exec/dotnet_system_exec.lvclass"/>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Flattened Pixmap.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/FixBadRect.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
<<<<<<< HEAD
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
=======
				<Item Name="XNET CAN Comm State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Comm State.ctl"/>
				<Item Name="XNET CAN Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Comm.ctl"/>
				<Item Name="XNET CAN Last Err.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Last Err.ctl"/>
				<Item Name="XNET Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Fill In Error Info.vi"/>
				<Item Name="XNET FlexRay Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay Comm.ctl"/>
				<Item Name="XNET FlexRay POC State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay POC State.ctl"/>
				<Item Name="XNET FlexRay Stats.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay Stats.ctl"/>
				<Item Name="XNET Frame CAN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame CAN.ctl"/>
				<Item Name="XNET Frame Ethernet.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Ethernet.ctl"/>
				<Item Name="XNET Frame FlexRay.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame FlexRay.ctl"/>
				<Item Name="XNET Frame LIN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame LIN.ctl"/>
				<Item Name="XNET Frame Type CAN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type CAN.ctl"/>
				<Item Name="XNET Frame Type Ethernet.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type Ethernet.ctl"/>
				<Item Name="XNET Frame Type FlexRay.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type FlexRay.ctl"/>
				<Item Name="XNET Frame Type LIN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type LIN.ctl"/>
				<Item Name="XNET J1939 Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET J1939 Comm.ctl"/>
				<Item Name="XNET LIN Comm State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Comm State.ctl"/>
				<Item Name="XNET LIN Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Comm.ctl"/>
				<Item Name="XNET LIN Last Err.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Last Err.ctl"/>
				<Item Name="XNET Read (Frame CAN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame CAN).vi"/>
				<Item Name="XNET Read (Frame Ethernet).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame Ethernet).vi"/>
				<Item Name="XNET Read (Frame FlexRay).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame FlexRay).vi"/>
				<Item Name="XNET Read (Frame LIN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame LIN).vi"/>
				<Item Name="XNET Read (Frame Raw).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame Raw).vi"/>
				<Item Name="XNET Read (Signal Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal Single-point).vi"/>
				<Item Name="XNET Read (Signal Waveform) .vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal Waveform) .vi"/>
				<Item Name="XNET Read (Signal XY).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal XY).vi"/>
				<Item Name="XNET Read (State CAN Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State CAN Comm).vi"/>
				<Item Name="XNET Read (State FlexRay Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Comm).vi"/>
				<Item Name="XNET Read (State FlexRay Cycle Macrotick).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Cycle Macrotick).vi"/>
				<Item Name="XNET Read (State FlexRay Stats).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Stats).vi"/>
				<Item Name="XNET Read (State J1939 Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State J1939 Comm).vi"/>
				<Item Name="XNET Read (State LIN Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State LIN Comm).vi"/>
				<Item Name="XNET Read (State Session Info).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Session Info).vi"/>
				<Item Name="XNET Read (State Time Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Comm).vi"/>
				<Item Name="XNET Read (State Time Current).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Current).vi"/>
				<Item Name="XNET Read (State Time Start).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Start).vi"/>
				<Item Name="XNET Read (State Time Trigger).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Trigger).vi"/>
				<Item Name="XNET Read.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read.vi"/>
				<Item Name="XNET Session Info State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Session Info State.ctl"/>
				<Item Name="NI_Automotive Diagnostic Command Set.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/Automotive Diagnostic Command Set/NI_Automotive Diagnostic Command Set.lvlib"/>
				<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore RefNum"/>
				<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Acquire Semaphore.vi"/>
				<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
				<Item Name="Release Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore Reference.vi"/>
				<Item Name="RemoveNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/RemoveNamedSemaphorePrefix.vi"/>
				<Item Name="GetNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/GetNamedSemaphorePrefix.vi"/>
				<Item Name="Obtain Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Obtain Semaphore Reference.vi"/>
				<Item Name="AddNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/AddNamedSemaphorePrefix.vi"/>
				<Item Name="Validate Semaphore Size.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Validate Semaphore Size.vi"/>
				<Item Name="UDS RequestSeed.vi" Type="VI" URL="/&lt;vilib&gt;/Automotive Diagnostic Command Set/Diagnostic Protocols.llb/UDS RequestSeed.vi"/>
				<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore.vi"/>
				<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Not A Semaphore.vi"/>
				<Item Name="UDS SendKey.vi" Type="VI" URL="/&lt;vilib&gt;/Automotive Diagnostic Command Set/Diagnostic Protocols.llb/UDS SendKey.vi"/>
				<Item Name="UDS DiagnosticSessionControl.vi" Type="VI" URL="/&lt;vilib&gt;/Automotive Diagnostic Command Set/Diagnostic Protocols.llb/UDS DiagnosticSessionControl.vi"/>
				<Item Name="UDS ECUReset.vi" Type="VI" URL="/&lt;vilib&gt;/Automotive Diagnostic Command Set/Diagnostic Protocols.llb/UDS ECUReset.vi"/>
				<Item Name="UDS WriteDataByIdentifier.vi" Type="VI" URL="/&lt;vilib&gt;/Automotive Diagnostic Command Set/Diagnostic Protocols.llb/UDS WriteDataByIdentifier.vi"/>
				<Item Name="UDS ReadDataByIdentifier.vi" Type="VI" URL="/&lt;vilib&gt;/Automotive Diagnostic Command Set/Diagnostic Protocols.llb/UDS ReadDataByIdentifier.vi"/>
				<Item Name="Stall Data Flow.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/Stall Data Flow.vim"/>
				<Item Name="_XNET Split Database Cluster.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/_XNET Split Database Cluster.vi"/>
				<Item Name="_XNET Convert List From Array To Comma.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/_XNET Convert List From Array To Comma.vi"/>
				<Item Name="_XNET Create Session.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/_XNET Create Session.vi"/>
				<Item Name="XNET Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Mode.ctl"/>
				<Item Name="XNET Create Session (PDU Output Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (PDU Output Single-point).vi"/>
				<Item Name="XNET Create Session (PDU Output Queued).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (PDU Output Queued).vi"/>
				<Item Name="XNET Create Session (PDU Input Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (PDU Input Single-point).vi"/>
				<Item Name="XNET Create Session (PDU Input Queued).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (PDU Input Queued).vi"/>
				<Item Name="XNET Create Session (Conversion).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Conversion).vi"/>
				<Item Name="XNET Create Session (Generic).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Generic).vi"/>
				<Item Name="XNET Create Session (Frame Output Queued).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Frame Output Queued).vi"/>
				<Item Name="XNET Create Session (Frame Output Stream).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Frame Output Stream).vi"/>
				<Item Name="XNET Create Session (Frame Input Queued).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Frame Input Queued).vi"/>
				<Item Name="XNET Create Session (Frame Output Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Frame Output Single-point).vi"/>
				<Item Name="XNET Create Session (Frame Input Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Frame Input Single-point).vi"/>
				<Item Name="XNET Create Session (Frame Input Stream).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Frame Input Stream).vi"/>
				<Item Name="XNET Create Session (Signal Output XY).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Signal Output XY).vi"/>
				<Item Name="XNET Create Session (Signal Output Waveform).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Signal Output Waveform).vi"/>
				<Item Name="XNET Create Session (Signal Output Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Signal Output Single-point).vi"/>
				<Item Name="XNET Create Session (Signal Input XY).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Signal Input XY).vi"/>
				<Item Name="XNET Create Session (Signal Input Waveform).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Signal Input Waveform).vi"/>
				<Item Name="XNET Create Session (Signal Input Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Signal Input Single-point).vi"/>
				<Item Name="XNET Create Session.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session.vi"/>
				<Item Name="XNET Clear.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Clear.vi"/>
				<Item Name="XNET Control Scope.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Control Scope.ctl"/>
				<Item Name="XNET Stop.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Stop.vi"/>
>>>>>>> badce051dd3382cdf9f917f29ddfeb90acdf039c
			</Item>
			<Item Name="instr.lib" Type="Folder">
				<Item Name="Error language selector.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/Error language selector.ctl"/>
				<Item Name="CAN Get Error Text.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/CAN Get Error Text.vi"/>
				<Item Name="Error Converter (ErrCode or Status).vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/Error Converter (ErrCode or Status).vi"/>
				<Item Name="TPCANBaudrate.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/TPCANBaudrate.ctl"/>
				<Item Name="Wrap_Baudrate.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/Wrap_Baudrate.vi"/>
				<Item Name="TPCANHandle.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/TPCANHandle.ctl"/>
				<Item Name="Wrap_TPCANHandle.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/Wrap_TPCANHandle.vi"/>
				<Item Name="HW_Type.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/HW_Type.ctl"/>
				<Item Name="CAN Initialize.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/CAN Initialize.vi"/>
				<Item Name="CAN MSG Cluster.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/CAN MSG Cluster.ctl"/>
				<Item Name="TPCANTimestamp.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/TPCANTimestamp.ctl"/>
				<Item Name="CAN Read.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/CAN Read.vi"/>
				<Item Name="CAN Uninitialize.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/CAN Uninitialize.vi"/>
				<Item Name="TPCANParameter.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/TPCANParameter.ctl"/>
				<Item Name="PCAN Bus Off Auto Reset.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Bus Off Auto Reset.ctl"/>
				<Item Name="CAN Get Value.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/CAN Get Value.vi"/>
				<Item Name="PCAN Get 5VOLTS POWER.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get 5VOLTS POWER.vi"/>
				<Item Name="PCAN Get ACCEPTANCE_FILTER_11BIT.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get ACCEPTANCE_FILTER_11BIT.vi"/>
				<Item Name="PCAN Get ACCEPTANCE_FILTER_29BIT.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get ACCEPTANCE_FILTER_29BIT.vi"/>
				<Item Name="PCAN Get ALLOW_ERROR_FRAMES.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get ALLOW_ERROR_FRAMES.vi"/>
				<Item Name="PCAN Get ALLOW_RTR_FRAMES.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get ALLOW_RTR_FRAMES.vi"/>
				<Item Name="PCAN Get ALLOW_STATUS_FRAMES.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get ALLOW_STATUS_FRAMES.vi"/>
				<Item Name="PCAN Get BASIC API VERSION.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get BASIC API VERSION.vi"/>
				<Item Name="PCAN Get BUSOFF AUTORESET.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get BUSOFF AUTORESET.vi"/>
				<Item Name="PCAN Get BUSSPEED NOMINAL.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get BUSSPEED NOMINAL.vi"/>
				<Item Name="PCAN Get BUSSPEED_DATA.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get BUSSPEED_DATA.vi"/>
				<Item Name="PCAN Get CAN BITRATE ADAPTING.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get CAN BITRATE ADAPTING.vi"/>
				<Item Name="PCAN Get CHANNEL CONDITION.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get CHANNEL CONDITION.vi"/>
				<Item Name="Channel Availability.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/Channel Availability.ctl"/>
				<Item Name="PCAN Get CHANNEL FEATURE.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get CHANNEL FEATURE.vi"/>
				<Item Name="Channel Features.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/Channel Features.ctl"/>
				<Item Name="PCAN Get CHANNEL IDENTIFYING.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get CHANNEL IDENTIFYING.vi"/>
				<Item Name="PCAN Get CONTROLLER NUMBER.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get CONTROLLER NUMBER.vi"/>
				<Item Name="PCAN Get DEVICE CHANNEL VERSION.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get DEVICE CHANNEL VERSION.vi"/>
				<Item Name="PCAN Get DIRECTORY PATH FOR TRACE FILES.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get DIRECTORY PATH FOR TRACE FILES.vi"/>
				<Item Name="PCAN Get HARDWARE NAME.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get HARDWARE NAME.vi"/>
				<Item Name="PCAN Get INTERFRAME_DELAY  .vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get INTERFRAME_DELAY  .vi"/>
				<Item Name="PCAN Get IO_ANALOG_VALUE.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get IO_ANALOG_VALUE.vi"/>
				<Item Name="PCAN Get IO_DIGITAL_CONFIGURATION.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get IO_DIGITAL_CONFIGURATION.vi"/>
				<Item Name="PCAN Get IO_DIGITAL_VALUE.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get IO_DIGITAL_VALUE.vi"/>
				<Item Name="PCAN Get IP_ADDRESS.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get IP_ADDRESS.vi"/>
				<Item Name="PCAN Get LAN_SERVICE_STATUS.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get LAN_SERVICE_STATUS.vi"/>
				<Item Name="PCAN Get LISTEN ONLY.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get LISTEN ONLY.vi"/>
				<Item Name="PCAN Get LOG CONFIGURE.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get LOG CONFIGURE.vi"/>
				<Item Name="LOG config.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/LOG config.ctl"/>
				<Item Name="PCAN Get LOG LOCATION.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get LOG LOCATION.vi"/>
				<Item Name="PCAN Get LOG STATUS.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get LOG STATUS.vi"/>
				<Item Name="PCAN Get MESSAGE FILTER.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get MESSAGE FILTER.vi"/>
				<Item Name="PCAN Get RECEIVE EVENT HANDLER .vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get RECEIVE EVENT HANDLER .vi"/>
				<Item Name="PCAN Get RECEIVE STATUS.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get RECEIVE STATUS.vi"/>
				<Item Name="PCAN Get SPEED QUERY FD.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get SPEED QUERY FD.vi"/>
				<Item Name="PCAN Get SPEED QUERY.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get SPEED QUERY.vi"/>
				<Item Name="PCAN Get TRACE CONFIGURE.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get TRACE CONFIGURE.vi"/>
				<Item Name="TRACE config.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/TRACE config.ctl"/>
				<Item Name="PCAN Get TRACE LOCATION.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get TRACE LOCATION.vi"/>
				<Item Name="PCAN Get TRACE SIZE.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get TRACE SIZE.vi"/>
				<Item Name="PCAN Get TRACE STATUS.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get TRACE STATUS.vi"/>
				<Item Name="PCAN Get USB DEVICE NUMBER.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get USB DEVICE NUMBER.vi"/>
				<Item Name="PCAN Get ATTACHED_CHANNELS_COUNT.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get ATTACHED_CHANNELS_COUNT.vi"/>
				<Item Name="PCAN Get ATTACHED_CHANNELS .vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Get ATTACHED_CHANNELS .vi"/>
				<Item Name="TPCANChannelInformation.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/TPCANChannelInformation.ctl"/>
				<Item Name="TPCANDevice.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/TPCANDevice.ctl"/>
				<Item Name="Device Name.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/Device Name.ctl"/>
				<Item Name="Device ID.ctl" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/Device ID.ctl"/>
				<Item Name="4_x_U8_littel_Endian_to_U32.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/4_x_U8_littel_Endian_to_U32.vi"/>
				<Item Name="2_x_U8_littel_Endian_to_U16.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/2_x_U8_littel_Endian_to_U16.vi"/>
				<Item Name="PCAN Set BUSOFF AUTO RESET.vi" Type="VI" URL="/&lt;instrlib&gt;/KDI Digital Instrumentation/API_for_PCAN_BASIC_FD/PCAN Set BUSOFF AUTO RESET.vi"/>
			</Item>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="System" Type="VI" URL="System">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niedtTP.dll" Type="Document" URL="niedtTP.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niyanci.dll" Type="Document" URL="niyanci.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="PCANBasic.dll" Type="Document" URL="PCANBasic.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="IPC Flasher" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{E0FBDA09-1AB3-4B05-BD4F-ECC02978FACE}</Property>
				<Property Name="App_INI_GUID" Type="Str">{20D5E4BD-F1AB-4ADF-AD5B-0514D0C6D84B}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="App_waitDebugging" Type="Bool">true</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{3EA87E59-82A9-47E5-A6BF-EDBAF626F6F2}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">IPC Flasher</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Deployment/Build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{712DF599-2B62-482B-9CC1-6DF845E294C4}</Property>
				<Property Name="Bld_version.build" Type="Int">22</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">IPC Flasher.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Deployment/Build/NI_AB_PROJECTNAME.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Deployment/Build/Data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[2].destName" Type="Str">Supporting Files</Property>
				<Property Name="Destination[2].path" Type="Path">../Deployment/Build/Supporting Files</Property>
				<Property Name="Destination[2].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[3].destName" Type="Str">Python</Property>
				<Property Name="Destination[3].path" Type="Path">../Deployment/Build/Python</Property>
				<Property Name="Destination[3].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[4].destName" Type="Str">Logs</Property>
				<Property Name="Destination[4].path" Type="Path">../Deployment/Build/Logs</Property>
				<Property Name="Destination[4].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">5</Property>
				<Property Name="Source[0].itemID" Type="Str">{1B0135AD-4E7F-4FF2-B5F9-48E05F4AF50E}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/IPC Flasher Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Supporting Files/IPC_boot_P4toP5_Converter.srec</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Supporting Files/BootCommander.exe</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Data/Config.ini</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Supporting Files/IPC_boot_P4_C1_ota.srec</Property>
				<Property Name="Source[6].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[6].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[6].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">3</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/Python</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].type" Type="Str">Container</Property>
				<Property Name="Source[7].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[7].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[7].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/Supporting Files</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].type" Type="Str">Container</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">4</Property>
				<Property Name="Source[8].itemID" Type="Ref">/My Computer/Data/SampleLog.txt</Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">9</Property>
				<Property Name="TgtF_fileDescription" Type="Str">IPC Flasher</Property>
				<Property Name="TgtF_internalName" Type="Str">IPC Flasher</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2025 </Property>
				<Property Name="TgtF_productName" Type="Str">IPC Flasher</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{97FE13A4-A64E-4FE9-9742-7BC3FFDEDC32}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">IPC Flasher.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
