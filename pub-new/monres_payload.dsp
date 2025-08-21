<!doctype html>
  <HTML>
   <HEAD>

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<META HTTP-EQUIV="Expires" CONTENT="-1">
      <TITLE>Payload Details
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
    <TD class="menusectionHeader" colspan="3">Services &gt; Payload Detail</TD>
     </TR>
		 		 
</TABLE>
<TABLE>
	<TR>
	<TD colspan="2">
	<UL>
	<LI><a href="monres_overview.dsp">Monitoring Home</a>
	</UL>
	</TD>
	</TR>
</TABLE>


<form id = "payload" name="payload" method="POST" action="" target="details">
<table class = "noborder" width=70% cellpadding="0" cellspacing="0" >
	<tr>
	<td class ="tableHeader">Payload Information</td>
	</tr>
	%invoke ESBMonitoring.logging.userInterface:displayPayload%
	%loop LINES%
	<tr>
	<!-- This is a comment <td>%value LINES%</td>-->
	</tr>
	%endloop%
	
	%endinvoke%
</table>

	
</form>
<TD>
          <FORM action="monres_resubmission.dsp" method="POST"  readonly>
          
		  <INPUT type="hidden" name="CONTEXTID" value=%value CONTEXTID%>
	<textarea class="A" name="newPayload" rows="30" cols="50">
	%value payloadString%
	</textarea>
		  
</TD>
 <TR>
            <TD class="action">
              <INPUT type="submit" name="submit" value="Resubmit"> 
            </TD>
          </TR>
		  </FORM>

</body>