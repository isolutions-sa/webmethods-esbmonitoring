<HTML>
   <HEAD>
    <meta http-equiv="Pragma" content="no-cache">
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
  <META HTTP-EQUIV="Expires" CONTENT="-1">
    <TITLE>Package Property Files
    </TITLE>
    <LINK REL="stylesheet" TYPE="text/css" HREF="webMethods.css">

	<script src="packagefilter.js.txt"></script>

    <SCRIPT LANGUAGE="JavaScript">

      function confirmDelete (pkg, safe)
      {
        if(safe == "WmArt")
        {
            alert("'WmRoot' cannot be deleted");
            return false;
        }
        var s1 = "OK to Delete the '"+pkg+"' property file?\n\n";
        var s2 = "Package will be sent to the salvage directory\n";

        if(safe == "true")
        {
          return confirm(s1+s2);
        }
        else
        {
          return confirm(s1);
        }
      }
      function confirmReload (pkg,pkgType)
      {
         if(pkg == "WmRoot")
         {
            alert("'WmRoot' cannot be reloaded");
            return false;
         }
         var s1 = "OK to reload the `"+pkg+"' package?\n\n";
         var s2 = "Reloading a package may cause sessions currently using\n";

         var s3 = "services in that package to fail.\n";
         var doReload;
         doReload = confirm (s1+s2+s3);
         if(doReload)
         {
            var sNativeWarning = "Warning: This package contains native code\n";
            var sNativeWarning2 = "libraries.  You must restart the server\n";

            var sNativeWarning3 = "to reload Java services.\n";
            if(pkgType == "2")
            alert(sNativeWarning+sNativeWarning2+sNativeWarning3);
         }
         return doReload;
      }
      function confirmDisable (pkg)
      {
         if(pkg == "WmRoot")
         {
            alert("'WmRoot' cannot be disabled");
            return false;
         }
         var s1 = "OK to disable the `"+pkg+"' package?\n\n";
         var s2 = "Disabling a package causes all its services to be \n";
         var s3 = "unloaded and marked unavailable for use.\n";
         return confirm (s1+s2+s3);
      }
      function confirmEnable (pkg)
      {
         var s1 = "OK to enable the `"+pkg+"' package?\n\n";
         var s2 = "Enabling a package causes all its services to be \n";
         var s3 = "loaded and marked available for use.\n";
         return confirm (s1+s2+s3);
      }

      </SCRIPT>
      <SCRIPT src="webMethods.js.txt"></SCRIPT>
   </HEAD>
   <BODY onLoad="setNavigation('propfile_fileList.dsp', '/WmRoot/doc/OnlineHelp/wwhelp.htm?context=is_help&topic=IS_Packages_MngmtScrn');">
      <DIV class="position">
         <TABLE WIDTH="100%">
            <TR>
               <TD class="menusection-Packages" colspan=2>Packages &gt; Property File &gt; Config</TD>
            </TR>


    %ifvar action%
      %switch action%
        %case 'delete'%
          %invoke ESBMonitoring.properties.services.file:deleteFile%
            %ifvar errorMessage%
      <tr><td colspan="2">&nbsp;</td></tr>
              <TR><TD class="message" colspan="2">%value errorMessage%</TD></TR>
            %endif%
          %endinvoke%
      %endswitch%
    %endif action%

            %invoke wm.server.packages:packageList%
            <TR>
                <TD colspan=2>
                    <UL>
                        <LI><A HREF="propfile_create.dsp?">Create New Property File</A>
                        <li id="showfew" name="showfew"><a href="javascript:showFilterPanel(true)">Filter Packages</a></li>
                        <li style="display:none" id="showall" name="showall"><a href="propfile_fileList.dsp">Show All Packages</a></li>

                        <DIV id="filterContainer" name="filterContainer" style="display:none;padding-top=2mm;">
                        <br>
                        <table>
						<tr valign="top">
						<td>
                        <span >Filter criteria</span><br>
                        <input type="text" id="pfilter" name="pfilter" value="" onKeyPress="filterPackages(event)"/>
						</td>

						<td>

						<IMG SRC="images/blank.gif" height=10 width=10>
						<input type="checkbox" id="nested" name="nested" />
                        <span id="nesttitle" name="nesttitle">Filter on result</span>
						</td> <td>
						<IMG SRC="images/blank.gif" height=10 width=10>
						<input type="checkbox" id="exclude" name="exclude" checked />
                        <span id="excludetitle" name="excludetitle">Exclude from result</span>
						</td> <td>
                        <IMG SRC="images/blank.gif" height=10 width=10>
                        <input type="Button" id="submit" name="submit" value="Submit" onclick="filterPackagesInternal()"/>
                        </td> </tr></table>
                        </DIV>
                    </UL>
                </TD>
            </TR>
            <TR>
	    	<TD id="result" colspan="2" align="right"></TD>
	    </TR>
            <TR>
            <TD>
            <IMG SRC="images/blank.gif" height=10 width=10></TD>
            <TD>
            <TABLE class="tableView" WIDTH=100% id="head" name="head">
            <TR>
                <TD CLASS="heading" COLSPAN=2>Package List</TD>
            </TR>
            <TR>
               <TD CLASS="oddcol-l">Package Name</TD>
               <TD CLASS="oddcol-l">Property File Name</TD>
            </TR>
            <script>resetRows();</script>
            %loop packages%
            <TR >
               <script>writeTD('rowdata-l');</script>
               			<A>%value name%</A>
               </TD>
               <script>writeTD('rowdata');swapRows();</script>
            			%rename name packageName -copy%
									%invoke ESBMonitoring.properties.services.packages:getPkgPropertiesFileList%

										
											<TABLE  WIDTH=100% id="head" name="head">
												%loop pkgPropertiesFileList%
												<TR>
													<TD>
														<A HREF="propfile_settings-extended.dsp?fileName=%value fileName%&pkg=%value ../packageName%&file=%value file%">%value file%</A>
													</TD>
													%ifvar ../packageName matches('Wm*')%
													%else%
													<TD  width=20>
														<A  HREF="javascript:execute('propfile_fileList.dsp?action=delete&fileName=%value fileName%')"
														onclick="return confirmDelete('%value fileName%', '%value ../packageName%');"><IMG SRC="icons/delete.gif" alt="Delete this Property File" border="0"></A>
													</TD>
													%endif%
												</TR>
												%endloop%
												%endinvoke%
											</TABLE>
            </TR>%endloop%
            </TABLE></TD></TR>
         </TABLE> %endinvoke%

         
         %ifvar pfilter -notempty%
         <script>
         	
         	showFilterPanel();

         	var pfilter = document.getElementById("pfilter");
         	pfilter.value="%value pfilter%"

         	%ifvar regex -notempty%
         	var regex = document.getElementById("regex");
         	pfilter.checked=true;
         	%endif%

         	%ifvar exclude -notempty%
		var excludeFromResult = document.getElementById("exclude");
		excludeFromResult.checked=true;
         	%endif%

		filterPackagesInternal();

         </script>
          %endif%

      </DIV>
   </BODY>
</HTML>
