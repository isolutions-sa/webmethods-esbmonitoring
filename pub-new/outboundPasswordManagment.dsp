<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<html>
<head>
	<title>Outbound passwords administration</title>
	<link rel='stylesheet' type='text/css' href='modern.css' />
</head>

<body>

	<p id='breadcrumps'>
		<a href='index.dsp'>Outbound passwords administration</a>
	<p>

	%ifvar action equals('defineEntry')%
		%invoke ESBMonitoring.security.services.password.Private:defineEntry%
			%ifvar message%
				<div id='message'>%value message%</div>
			%endif%
		%onerror%
			%ifvar message%
				<p>Error: %value message%</p>
			%endif%
		%endinvoke%
	%endif%

	%ifvar action equals('delete')%
		%invoke ESBMonitoring.security.services.password.Private:deleteEntry%
			%ifvar message%
				<div id='message'>%value message%</div>
			%endif%
		%onerror%
			%ifvar message%
				<p>Error: %value message%</p>
			%endif%
		%endinvoke%
	%endif%

	%ifvar action equals('update')%
		%invoke ESBMonitoring.security.services.password.Private:updateEntry%
			%ifvar message%
				<div id='message'>%value message%</div>
			%endif%
		%onerror%
			%ifvar message%
				<p>Error: %value message%</p>
			%endif%
		%endinvoke%
	%endif%

	<h2>Outbound passwords administration</h2>
	
	<p id='actions'>
		<a class='button' href='define.dsp'>Add new entry ...</a>
	</p>

<!-- List currently defined keys -->

	<table>
		<tr>
			<th>Key</th>
			<th>Actions</th>
		</tr>

	%invoke ESBMonitoring.security.services.password.Private:listEntries%
		%ifvar keys -notempty%
			%loop keys%
				<tr>
					<td>%value keys%</td>
					<td><a class='button' href='delete.dsp?key=%value keys%'>Delete</a> <a class='button' href='update.dsp?key=%value keys%'>Update</a></td>
				</tr>
			%endloop%
		%else%
			<tr>
				<td colspan='2'><em>No entries defined. Use button above to add entries.</em></td>
			</tr>
		%endif%
	%endinvoke%

	</table>

</body></html>
