<!doctype html>
  <HTML>
   <HEAD>

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<META HTTP-EQUIV="Expires" CONTENT="-1">
      <TITLE>Resubmitted Services Details
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
    <TD class="menusectionHeader" colspan="3">Services &gt; Resubmitted Service Detail</TD>
     </TR>
		 		 
</TABLE>
%invoke ESBMonitoring.resubmission.userInterface:resubmitService%
<TABLE>
	<TR>
	<TD colspan="2">
	<UL>
	<LI><a href="monres_overview.dsp">Monitoring Home</a>
	</UL>
	</TD>
	</TR>
</TABLE>
<table class = "noborder" width=70% cellpadding="0" cellspacing="0" >
	<tr>
	<td class ="tableHeader">Services Resubmission(%value countRS%)</td><td class ="tableHeader"></td><td class ="tableHeader"></td>
	</tr>
</table>
<br>
<table class = "noborder" width=70% cellpadding="0" cellspacing="0" >
	<tr class = "tableHeader">
	<td >Service Name</td><td> Context ID</td><td>Resubmission Status</td>
	</tr>
	%loop ResubStatusList%
	<tr>
	<td>%value SERVICENAME%</td><td> %value CONTEXTID%</td>
	%switch RESUBMISSIONSTATUS% 
	%case 'FAILURE'% 
		<td align="center">FAILURE</td>
	%case 'SUCCESS'% 
		<td align="center">SUCCESS</td>
	%case % 
		<td align="center">%value RESUBMISSIONSTATUS%</td>
	</tr>
	%endswitch%
	</tr>
	%endloop%
</table>
%endinvoke%
</body>