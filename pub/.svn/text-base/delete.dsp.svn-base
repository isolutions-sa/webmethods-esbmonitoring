<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<html>
<head>
	<title>Outbound passwords administration</title>
	<link rel='stylesheet' type='text/css' href='modern.css' />
</head>
<body>
	<p id='breadcrumps'>
		<a href='outboundPasswordManagment.dsp'>Outbound passwords administration</a> &gt; <a href='delete.dsp'>Delete entry</a>
	<p>
	<h2>Delete entry</h2>
	<p id='actions'>
		<a class='button' href='outboundPasswordManagment.dsp'>Back to main ...</a>
	</p>
	%ifvar key%
	<form action="outboundPasswordManagment.dsp" method="post">
		<input type="hidden" name="action" value="delete" />
		<input type="hidden" name="key" value="%value key%" />
		<table>
			<tr>
				<th>Confirm deletion</th>
			</tr>
			<tr>
				<td><br/>Really delete entry '%value key%'?<br/><br/></td>
			</tr>
		<table>
		<p align="right">
			<input type="submit" value="Delete" />
		</p>
	%else%
		<p>Missing parameter 'key'!<p/>
	%endif%

</body>
