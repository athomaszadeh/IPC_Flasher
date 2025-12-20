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
			<Item Name="Run Sequence.vi" Type="VI" URL="../SubVIs/Run Sequence.vi"/>
			<Item Name="Read PCBAID.vi" Type="VI" URL="../SubVIs/Read PCBAID.vi"/>
			<Item Name="Read FW Version.vi" Type="VI" URL="../SubVIs/Read FW Version.vi"/>
			<Item Name="Call Geneaology Script.vi" Type="VI" URL="../SubVIs/Call Geneaology Script.vi"/>
			<Item Name="BC Wrapper.vi" Type="VI" URL="../SubVIs/BC Wrapper.vi"/>
			<Item Name="Display Results.vi" Type="VI" URL="../SubVIs/Display Results.vi"/>
			<Item Name="Update Console.vi" Type="VI" URL="../SubVIs/Update Console.vi"/>
			<Item Name="Global Variable.vi" Type="VI" URL="../SubVIs/Global Variable.vi"/>
			<Item Name="Get FW Path.vi" Type="VI" URL="../SubVIs/Get FW Path.vi"/>
			<Item Name="Format SN PN.vi" Type="VI" URL="../SubVIs/Format SN PN.vi"/>
			<Item Name="Save Console Logs.vi" Type="VI" URL="../SubVIs/Save Console Logs.vi"/>
		</Item>
		<Item Name="Supporting Files" Type="Folder">
			<Item Name="BootCommander.exe" Type="Document" URL="../Supporting Files/BootCommander.exe"/>
			<Item Name="IPC_boot_P4toP5_Converter.srec" Type="Document" URL="../Supporting Files/IPC_boot_P4toP5_Converter.srec"/>
			<Item Name="IPC_app_ota_P5_C1_rc_25.31.07.srec" Type="Document" URL="../Supporting Files/IPC_app_ota_P5_C1_rc_25.31.07.srec"/>
			<Item Name="IPC_boot_P5_C1_ota.srec" Type="Document" URL="../Supporting Files/IPC_boot_P5_C1_ota.srec"/>
		</Item>
		<Item Name="Data" Type="Folder">
			<Item Name="Config.ini" Type="Document" URL="../Data/Config.ini"/>
			<Item Name="SampleLog.txt" Type="Document" URL="../Logs/SampleLog.txt"/>
		</Item>
		<Item Name="Python" Type="Folder">
			<Item Name="read_pcbaid.py" Type="Document" URL="../Python/read_pcbaid.py"/>
			<Item Name="read_uds.py" Type="Document" URL="../Python/read_uds.py"/>
			<Item Name="read_versions.py" Type="Document" URL="../Python/read_versions.py"/>
			<Item Name="uds_ping.py" Type="Document" URL="../Python/uds_ping.py"/>
			<Item Name="write_read_pnsn.py" Type="Document" URL="../Python/write_read_pnsn.py"/>
		</Item>
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
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
			</Item>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="System" Type="VI" URL="System">
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
				<Property Name="Bld_version.build" Type="Int">3</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">IPC Flasher.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Deployment/Build/NI_AB_PROJECTNAME.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Deployment/Build/Data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[2].destName" Type="Str">Python</Property>
				<Property Name="Destination[2].path" Type="Path">../Deployment/Build/Python</Property>
				<Property Name="Destination[2].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[3].destName" Type="Str">Supporting Files</Property>
				<Property Name="Destination[3].path" Type="Path">../Deployment/Build/Supporting Files</Property>
				<Property Name="Destination[3].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[4].destName" Type="Str">Logs</Property>
				<Property Name="Destination[4].path" Type="Path">../Deployment/Build/Logs</Property>
				<Property Name="Destination[4].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">5</Property>
				<Property Name="Source[0].itemID" Type="Str">{EB9DEFA9-A388-4333-AD41-75E833E81EBF}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/IPC Flasher Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Supporting Files/IPC_boot_P4toP5_Converter.srec</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Supporting Files/BootCommander.exe</Property>
				<Property Name="Source[4].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[4].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[4].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Python</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">Container</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Data/Config.ini</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">4</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/Data/SampleLog.txt</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[7].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[7].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">3</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/Supporting Files</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">8</Property>
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
