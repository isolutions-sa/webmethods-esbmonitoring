<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
  <HTML>
   <HEAD>

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<META HTTP-EQUIV="Expires" CONTENT="-1">
      <TITLE>Services
      </TITLE>
      <LINK REL="stylesheet" TYPE="text/css" HREF="css/statistics.css">
	  <SCRIPT SRC="js/statistic.js"></SCRIPT>
	    <script type="text/javascript">
		  <!--

		-->
		</script>

      <style>
a { color: inherit; text-decoration: none;}

    </style>
</HEAD>
<body>
%invoke ESBMonitoring.logging.userInterface:displayMainPage%
<br/>
<div style="display:none"> </div>
 <TABLE width=100% cellpadding="0" cellspacing="0">
         <TR>
            <TD class="menusectionHeader" colspan="3">Services &gt; Overview (%value count%)</TD>
         </TR>
		 		 
      </TABLE>
	  <TABLE>
			<TR>
				<TD colspan="2">
				<UL>	
				<LI><a href="monres_overview.dsp">Refresh this Page</a>
				</UL>	
				</TD>
			</TR>
		</TABLE>


<TABLE class="tableView" width="100%">
        <TR class="tableHeader">
		<td align="left"><img src="images/Icon_SelectAll.gif" alt="image not found" style="border:0; padding: 0; margin:0;"></td>
		<td align="left"><img src="images/Icon_StatusColumn.png" alt="image not found" style="border:0; padding: 0; margin:0;"></td>
		<td align="left">Service Name</td>
		<td align="left">Status</td>
		<td align="left">Start Time</td>
		<td align="left">Server</td>
		<td align="left">ContextID</td>
		<td align="left">Details</td>
	</tr>
	
	%loop resultsOut%
	<TR class="row">
	<td align="center"><input type="checkbox" name="select" id="select" value="%value CONTEXTID%"></td>
	%switch SERVICEDISPLAYLOG% 
	%case 'COMPLETED'% 
	<td align="center"><img src="images/Status_Green.png" border="0"></td>
	%case 'FAILED'% 
	<td align="center"><img src="images/Status_Red.png" border="0"></td> 
	%case 'STARTED'% 
	<td align="center"><img src="images/Status_Warning.png" border="0"></td>
	%case 'RESUBMITTED'% 
	<td align="center"><img src="images/Status_Blue.png" border="0"></td>
	%endswitch% 
	<td>%value SERVICENAME%</td>
	<td>%value SERVICEDISPLAYLOG%</td>
	<td>%value TIMESTAMP%</td>
	<td>%value SERVERINFORMATION%</td>
	<td>%value CONTEXTID%</td>
	<td align="center">
	<a href="monres_serviceDetails.dsp?CONTEXTID=%value CONTEXTID%&SERVICEDISPLAYLOG=%value SERVICEDISPLAYLOG%" target = "details">
	<img src="images/Icon_ViewDetail.gif" border="0">
	</a>
	</td>
	</tr>
	</form> 
	%endloop%
	%endinvoke%

	</table>
</body>