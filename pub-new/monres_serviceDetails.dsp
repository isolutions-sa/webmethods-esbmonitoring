<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
  <HTML>
  <script type="text/javascript">
  
 function getInputPayload()
{	
	document.payloadInput.submit();
	
}

 function getOutputPayload()
{	
	document.payloadOutput.submit();
	
}

 function Resubmit()
{	
	document.Resubmit.submit();
	
}
  </script>
   <HEAD>
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<META HTTP-EQUIV="Expires" CONTENT="-1">
      <TITLE>Services Details
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

<body bgcolor="#E6E6FA">
 <TABLE width=100% cellpadding="0" cellspacing="0">
    <TR>
    <TD class="menusectionHeader" colspan="3">Services &gt; Service Detail</TD>
     </TR>
		 		 
</TABLE>
<br>
<br>
				
%invoke ESBMonitoring.logging.userInterface:displayServiceDetails%
<table class = "noborder" width=70% cellpadding="0" cellspacing="0">
	<tr>
	<td class ="tableHeader">Service Information</td><td class ="tableHeader"></td><td class ="tableHeader"></td>
	</tr>
	<tr>
	<td class = "leftHeading"></td><td align = "left"></td>
	</tr>
	<tr>
	<td>
	<form name="payloadInput" method="post" action="/ESBMonitoring/monres_payload.dsp" target="details">
	<input type=submit onClick="getInputPayload();" value='View Input Pipeline'>
	<input type="hidden" name="LOGTYPE" value ="START"/>
	<input type="hidden" name="CONTEXTID" value=%value CONTEXTID%/>
	</form>
	</td>
	<td>
	<form name="payloadOutput" method="post" action="/ESBMonitoring/monres_payload.dsp" target="details">
	<input type=submit onClick="getOutputPayload();" value='View Output Pipeline'>
	<input type="hidden" name="LOGTYPE" value ="NOTSTART"/>
	<input type="hidden" name="CONTEXTID" value=%value CONTEXTID%/>
	</form>
	</td>
	<td>
	<form name="Resubmit" method="post" action="/ESBMonitoring/monres_resubmission.dsp" target="details">
	<input type=submit onClick="getOutputPayload();" value='Resubmit'>
	<input type="hidden" name="CONTEXTID" value=%value CONTEXTID%/> 
	</form>
	</td>
	</tr>
	<tr>
	<td class = "leftHeading"></td><td align = "left"></td>
	</tr>
	<tr>
	<td class = "leftHeading">Service Name: </td><td class = "rightContent">%value SERVICENAME%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Server ID: </td><td class = "rightContent"> %value SERVERINFORMATION%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Start Time: </td><td class = "rightContent"> %value STARTTIMESTAMP%</td>
	</tr>
	<tr>
	<td class = "leftHeading">End Time: </td><td class = "rightContent">  %value ENDTIMESTAMP%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Current Status: </td><td class = "rightContent"> %value SERVICEDISPLAYLOG%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Source System: </td><td class = "rightContent"> %value SOURCESYSTEM%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Target System: </td><td class = "rightContent"> %value TARGETSYSTEM%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Interface Name: </td><td class = "rightContent"> %value INTERFACENAME%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Group Name: </td><td class = "rightContent"> %value GROUPNAME%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Transaction Type: </td><td class = "rightContent"> %value TRANSACTIONTYPE%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Transaction ID: </td><td class = "rightContent"> %value TRANSACTIONID%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Customer ID: </td><td class = "rightContent"> %value CUSTOMERID%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Context ID: </td><td class = "rightContent"> %value CONTEXTID%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Root Context ID: </td><td class = "rightContent"> %value ROOTCONTEXTID%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Parent Context ID: </td><td class = "rightContent"> %value PARENTCONTEXTID%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Action Taken by: </td><td class = "rightContent"> %value ACTIONID%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Resubmitted From ContextID: </td><td class = "rightContent"> %value RESUBMITTEDFROM%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Last Resubmission Time: </td><td class = "rightContent"> %value LASTRESUBMISSIONTIMESTAMP%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Last Resubmission ID: </td><td class = "rightContent"> %value LASTRESUBMITTEDID%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Last Resubmission Server: </td><td class = "rightContent"> %value LASTRESUBMITTEDONSERVER%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Resubmission Count: </td><td class = "rightContent"> %value RESUBMISSIONCOUNT%</td>
	</tr>
	%switch SERVICEDISPLAYLOG% 
	%case 'FAILED'%
	<tr>
	<td class = "leftHeading">Error Level: </td><td class = "rightContent"> %value ERRORLEVEL%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Error: </td><td class = "rightContent"> %value ERROR%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Error Type: </td><td class = "rightContent"> %value ERRORTYPE%</td>
	</tr>
	<tr>
	<td class = "leftHeading">Error Details: </td><td class = "rightContent"> %value ERRORDUMP%</td>
	</tr>
	%endswitch%
</table>
	
%endinvoke%

</body>