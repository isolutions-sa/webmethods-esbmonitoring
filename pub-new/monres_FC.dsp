<!doctype html>
  <HTML>
   <HEAD>

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<META HTTP-EQUIV="Expires" CONTENT="-1">
      <TITLE>Services Force Completion Details
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
    <TD class="menusectionHeader" colspan="3">Services &gt; Force Completion Detail</TD>
     </TR>
</TABLE>
<TABLE>
	<TR>
	<TD colspan="2">
	<UL>	
	<LI><a href="monres_nonComplete.dsp">Back</a>
	</UL>	
	</TD>
	</TR>
</TABLE>
		
		
%invoke ESBMonitoring.logging.userInterface:displayForceCompletion%
<table class = "noborder" width=70% cellpadding="0" cellspacing="0" >
	<tr>
	<td class ="tableHeader">Services Force Completed(%value countFC%)</td><td class ="tableHeader"></td><td class ="tableHeader"></td>
	</tr>
</table>
<br>
<table class = "noborder" width=70% cellpadding="0" cellspacing="0" >
		<tr>
	%switch FCSTATUS% 
	%case 'FAILURE'% 
		<td bgcolor ="#FA5050">Service Force Completion Failed !!</td> <td bgcolor ="#FA5050"></td>
	%case 'SUCCESS'% 
		<td bgcolor ="#A5DF00">Service Force Completion Success !!</td><td bgcolor ="#A5DF00"></td>
	</tr>
	<tr class = "tableHeader">
	<td >Service Name</td><td> Context ID</td>
	</tr>
	%endswitch%
	%loop FCServices%
	<tr>
	<td>%value SERVICENAME%</td><td> %value CONTEXTID%</td>
	</tr>
	%endloop%
</table>
	
%endinvoke%

</body>