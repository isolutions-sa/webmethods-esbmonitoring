<!doctype html>
  <HTML>
   <HEAD>

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<META HTTP-EQUIV="Expires" CONTENT="-1">
      <TITLE>Search Services
      </TITLE>
      <LINK REL="stylesheet" TYPE="text/css" HREF="css/statistics.css">
	<style>
a { color: inherit; text-decoration: none;}

    </style>
</HEAD>
<body>
%invoke ESBMonitoring.logging.userInterface:displaySearchPage%
<div style="display:none"> </div>
<TABLE width=100% cellpadding="0" cellspacing="0">
    <TR>
    <TD class="menusectionHeader" colspan="3"> Service Search Detail &gt; Services (%value count%)</TD>
     </TR>
		 		 
</TABLE>
<BR>
<form id="fcr" method="POST" action="" target="details">		
<TABLE>
	<TR>
	<td>
	<input type="button" onClick="resubmit();" value="Resubmit Transactions" name="Resubmit">
	</td>
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
	</TR>
	

	%loop resultsOut%
	<TR class="row">
	<td align="center"><input type="checkbox" name="contextID" id="contextID" value="%value CONTEXTID%"></td>
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
	<a href="monres_serviceDetails.dsp?CONTEXTID=%value CONTEXTID%&SERVICEDISPLAYLOG=%value SERVICEDISPLAYLOG%">
	<img src="images/Icon_ViewDetail.gif" border="0">
	</a>
	</td>
	</tr>
	%endloop%
	%endinvoke%
	<input type="hidden" name="CONTEXTID" value=%value CONTEXTID%/>
</form>

  <script type="text/javascript">
  form=document.getElementById("fcr");
   function forceComplete()
{	
        form.action="/ESBMonitoring/monres_FC.dsp";
        form.submit();
	//document.forceComplete.submit();
	
}

   function resubmit()
{	
	//document.resubmit.submit();
		form.action="/ESBMonitoring/monres_resubmission.dsp";
        form.submit();
}
  </script>
	</table>

</body>