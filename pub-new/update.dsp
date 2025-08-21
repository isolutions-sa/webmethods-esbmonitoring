<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<html>
<head>
	<title>Outbound passwords administration</title>
	<link rel='stylesheet' type='text/css' href='webMethods.css' />
</head>
<body>
	<p id='breadcrumps'>
		<a href='outboundPasswordManagment.dsp'>Outbound passwords administration</a> &gt; <a href='update.dsp'>Update entry</a>
	<p>
	<h2>Update existing entry</h2>
	<p id='actions'>
		<a class='button' href='outboundPasswordManagment.dsp'>Back to main ...</a>
	</p>
	%ifvar key%
		<form action="outboundPasswordManagment.dsp" method="post">
			<input type="hidden" name="action" value="update" />
			<input type="hidden" name="key" value="%value key%" />
			<table>
				<tr>
					<th colspan='2'>Enter password for existing entry</th>
				</tr>
				<tr>
					<td>Key</td>
					<td>%value key%</td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="text" name="password" size="50" /></td>
				</tr>
			<table>
			<p align="right">
				<input type="submit" value="Update" />
			</p>
		</form>
	%else%
		<p>Missing parameter 'key'!<p/>
	%endif%
</body>
