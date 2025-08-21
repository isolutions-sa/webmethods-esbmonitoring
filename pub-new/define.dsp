<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<html>
<head>
	<title>Outbound passwords administration</title>
	<link rel='stylesheet' type='text/css' href='modern.css' />
</head>
<body>
	<p id='breadcrumps'>
		<a href='outboundPasswordManagment.dsp'>Outbound passwords administration</a> &gt; <a href='define.dsp'>Define new entry</a>
	<p>
	<h2>Define new entry</h2>
	<p id='actions'>
		<a class='button' href='outboundPasswordManagment.dsp'>Back to main ...</a>
	</p>
	<form action="outboundPasswordManagment.dsp" method="post">
		<input type="hidden" name="action" value="defineEntry" />
		<table>
			<tr>
				<th colspan='2'>Enter key and password for new entry</th>
			</tr>
			<tr>
				<td>Key</td>
				<td><input type="text" name="key" size="50" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" name="password" size="50" /></td>
			</tr>
		<table>
		<p align="right">
			<input type="submit" value="Submit" />
		</p>
	</form>
</body>
