<html>

	<head>
		<title>Calendar Picker</title>
		<link rel="stylesheet" type="text/css" href="webMethods.css">
		<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
		<style>
			.scrollbutton  
			{ 
				font-size: 70%; 
				letter-spacing: 2px; 
				font-weight: bold; 
				background-color:#E0E0C0; 
				color:#000000; 
				width:30%; 
			}
		</style>
		<script>
			var today = (new Date()).getDate();
			//alert( "today is " + today );

			function setDate( date )
			{
				var m = new Number('%value month%') + 1;
				if( m < 10 ) {
					m = "0" + m;
				}
				if( date < 10 ) {
					date = "0" + date;
				}
				//alert( "month to set = " + m );
				document.calForm.dateSelected.value = "%value year%-" + m + "-"+date;
			}

			function submitCal( whichEnd )
			{
				var theField = null;
				if( whichEnd == "From Date" ) {
					theField = opener.document.SearchForm.FromDate;
				} else {
					theField = opener.document.SearchForm.ToDate;
				}
				theField.value=document.calForm.dateSelected.value;
				window.close();
			}

			function monthBack() 
			{
				var pMonth = new Number('%value month%') - 1;
				if( pMonth == -1 ) {
					pMonth = 11; 
				}
				//alert( "roll back to month = " + pMonth );
				document.location.replace( "calendar.dsp?year=%value year%&month=" + pMonth + "&which=%value which%" );
			}

			function monthForward() 
			{
				var nMonth = new Number('%value month%') + 1;
				if( nMonth == 11 ) {
					nMonth = 0; 
				}
				//alert( "roll forward to month = " + nMonth );
				document.location.replace( "calendar.dsp?year=%value year%&month=" + nMonth + "&which=%value which%" );
			}
			function yearBack() 
			{
				var pYear = new Number('%value year%') - 1;
				document.location.replace( "calendar.dsp?year=" + pYear + "&month=%value month%&which=%value which%" );
			}

			function yearForward() 
			{
				var nYear = new Number('%value year%') + 1;
				document.location.replace( "calendar.dsp?year=" + nYear + "&month=%value month%&which=%value which%" );
			}
		</script>
	</head>

	<body >
		<table width=100% >

			%invoke B2BHelpline.helper:getCalendar%
			<tr>
				<td>
					<form name="scrollForm" mehtod="post">
					<table>
						<tr>
							<td colspan="7">
								<table width="100%" align="center" border="0" cellspacing="0" cellpadding="0" bgcolor="#000000">
									<tr>
										<td align="center">
											<input class="scrollbutton" type="button" name="prevMonth" value="<<" onClick="monthBack();">
										</td>
										<td align="center">
											<font color="#FFFFFF"><b>%value monthName%</b></font>
										</td>
										<td align="center">
											<input class="scrollbutton" type="button" name="nextMonth" value=">>" onClick="monthForward();">
										</td>
										<td align="center">
											&nbsp;&nbsp;
										</td>
										<td align="center">
											<input type="button" name="prevYear" value="<<" class="scrollbutton" onClick="yearBack();">
										</td>
										<td align="center">
											<font color="#FFFFFF"><b>%value year%</b></font>
										</td>
										<td align="center">
											<input type="button" name="nextYear" value=">>" class="scrollbutton" onClick="yearForward();">
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</form>
					<form name="calForm" action="transactionAnalysis.dsp" mehtod="post">
						<tr>
							%scope calendarRec%
							%loop weekdays%
							<td class="oddcol">%value weekdays%
							</td>
							%endloop weekdays%
						</tr>
						%loop weeks%
						<tr>
							%loop dates%
							<td class="evencol"><a href="javascript:setDate( %value dates% );">%value dates%</a>
							</td>
							%endloop dates%
						</tr>
						%endloop weeks%
						<tr class="oddrow">
							<td colspan="7" align="center">
								&nbsp;&nbsp;%value /which% Selected <input type="text" name="dateSelected" size="10" value="" onFocus="blur();">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="button" name="set" value="Set" onClick="submitCal('%value /which%');">
							</td>
						</tr>
					</table>
					</form>
				</td>
			</tr>
			%endinvoke%

		</table>
	
	</body>
</html>
