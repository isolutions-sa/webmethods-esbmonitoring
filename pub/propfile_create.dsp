<html>
	<head>
		<meta http-equiv="Pragma" content="no-cache">
		<meta http-equiv="Expires" content="-1">
		<title>Install New Property File</title>
		<link rel="stylesheet" type="text/css" href="/WmRoot/webMethods.css">
		<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
		<base target="_self">
        <style>
			.listbox  { width: 100%; }
		</style>
		<script src="/WmRoot/webMethods.js.txt"></script>
	
	</head>


	<body onLoad="setNavigation('propfile_fileList.dsp', '', 'foo');">
		<table width=100% >
			<tr>
				<td class="menusection-Logs" colspan=2>Install New Property File</td>
			</tr>
			<tr></tr>
				<TR><TD class="evenrow-l" colspan="2">
					<BR>
					<LI><A HREF="propfile_fileList.dsp?">Return to Property File List</A></LI>
					<BR><BR>
				</TD></TR>	

%ifvar action equals('new')%
  %invoke ESBMonitoring.properties.services.packages:newPkgProperty%
    %ifvar message%
      <tr><td colspan="4">&nbsp;</td></tr>
      <TR><TD class="message" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%value message%</TD></TR>
    %endif%
  %endinvoke%
%endif%
			
			<tr>
				<td>
					<table width="100%">
						<FORM name="newPropertyFile" METHOD="POST" ACTION="propfile_create.dsp?">
						<INPUT type="hidden" name="action" value="new">

						<!-- title bar -->
						<tr>
							<td class="heading" colspan=2>Document Type</td>      
						</tr>

						<!-- table labels --->
						<tr>
							<td nowrap class="oddrow">Package</td>
							<td nowrap class="oddcol-l">&nbsp;     
							<select NAME="Package">
								<option value="error">---Select Package Name------
								%invoke wm.server.packages:packageList%
								%loop packages%
								%ifvar name matches('Wm*')%
								%else%
								<option value="%value name%">%value name%
								%endloop%
								%endinvoke%
							</select>
							</td>
						</tr>

						<!--	<tr>
							<td nowrap class="evenrow">Property FileName</td>
							<td nowrap class="evencol-l">&nbsp;
							<input Type="text" name="propertyFileName">(Do Not use spaces in the filename!)   
							</input>
							</td>
						</tr>

						<!-- submit payload row -->

						<tr>
							<td class="action" colspan="2">
							<input type="submit" value="Add New Property File">
							</td>
						</tr>
						</form>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
