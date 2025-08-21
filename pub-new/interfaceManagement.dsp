<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<html>
<head>
	<title>Interface Management</title>
	<link rel='stylesheet' type='text/css' href='modern.css' />
</head>

<body>

<h1>Interface Management</h1>

<table style=”width:100%” cellspacing=”8″ cellpadding=”0″ border=”1″ align=”center” bgcolor=”#999999″>

 %invoke ESBMonitoring.logging.userInterface:displayInterfaceDetails%
 <tr >
<td><b>Interface Name</b></td>

<td><b>logTXN</b></td>
<td><b>logPayload</b></td>
<td><b>Action</b></td>
</tr>


</select>
 <tr >
	%loop interfaces%
	<FORM id="InterfaceForm" method="POST" ACTION="">
	<td>%value name%</td>

	<td>
	<select id="logTXN" name="logTXN">
  <option value=%value logTXN%>%value logTXN%</option>
  %ifvar logTXN equals('true') %
	<option value="false">false</option>
	%else%
	<option value="true">true</option>
	%end%

  
	</td>
		<td>
	<select id="logPayload" name="logPayload">
  <option value=%value logTXN%>%value logPayload%</option>
  
 %ifvar logPayload equals('true') %
	<option value="false">false</option>
	%else%
	<option value="true">true</option>
	%end%
	</td>
	<td>
	<input type='button' name='Submit' value='Submit' onclick='SubmitForm();' />
	</td>
</tr>
%endloop%

</table>%endinvoke%
</form>
<script type='text/javascript'>

function SubmitForm()
{
   
        document.forms['InterfaceForm'].action="/ESBMonitoring/update_interface.dsp";
		document.forms['InterfaceForm'].method = "POST";
        document.forms['InterfaceForm'].submit();
}
</script>

</body></html>
