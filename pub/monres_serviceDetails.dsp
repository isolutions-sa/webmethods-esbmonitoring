<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
  <HTML>
   <HEAD>
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
	<META HTTP-EQUIV="Expires" CONTENT="-1">
	 <TITLE>Services Details
	 </TITLE>
	 <LINK REL="stylesheet" TYPE="text/css" HREF="css/statistics.css">
	 <SCRIPT SRC="js/statistic.js"></SCRIPT>
	 <style>
		@import url('https://fonts.googleapis.com/css2?family=Product+Sans:wght@300;400;500;700&display=swap');
	  	 :root {
			--primary-font: 'Product Sans', sans-serif;
			--isolution-dark-blue: #003ca4;
			 --isolution-mid-blue: #0068c4;
			--isolution-soft-blue: #ebf1f7;
			--isolution-active-status: #009d0d;
			--isolution-pending-status: #ffb700;
			--isolution-suspended-status: #c00000;
		  }
		  body{
			padding: 20px;
			border: 0;
			 -webkit-font-smoothing: antialiased;
			-moz-osx-font-smoothing: grayscale;
			font-smooth: antialiased;
			background: var(--isolution-soft-blue);
		  }
		  *, *::before, *::after {
			box-sizing: border-box;
		  }
		  th, td, body, input, p, textarea, select{
			font-family: var(--primary-font);
		  }
		  a { color: inherit; text-decoration: none;}
		   .page-header{
			padding: 0 0 24px 0;
			margin-bottom: 24px;
			border-bottom: 1px solid #e9ecef;
		 }
		 .header-content{
			display: flex;
			justify-content: space-between; 
			align-items: center;
		 }
		 .page-title{
			font-weight: 700; 
			font-size: 23px; 
			color: #333; 
			margin: 0 0 8px 0;
		 }
		 .page-meta{
			display: flex; 
			align-items: center; 
			gap: 16px;
		 }
		 .outline-button{
			display: inline-flex;
			align-items: center;
			gap: 8px;
			background: transparent;
			color: #0068c4;
			padding: 8px 16px; 
			border: 2px solid #0068c4; 
			border-radius: 8px; 
			text-decoration: none;
			font-size:	14px;		
			font-weight: 500; 
			transition: all 0.2s ease;
		 }
		 .outline-button:hover{
			background: #0068c4; 
			color: white;
		 }
		 .outline-success-button{
			color: var(--isolution-active-status);
			border: 2px solid var(--isolution-active-status); 
		 }
		 .outline-success-button:hover{
			background: var(--isolution-active-status);
			color: white;
		 }
		 input[type="submit"]{
			cursor: pointer;
		 }
		 .form-actions-container{
			display: flex;
			align-items: center;
			justify-content: flex-end;
			gap: 10px;
			margin-bottom: 20px;
		}
	 </style>
</HEAD>

<body>
	%invoke ESBMonitoring.logging.userInterface:displayServiceDetails%
	<!-- Page Header -->
	<div class="page-header">
		<div class="header-content">
			<div>
				<h1 class="page-title">Service Information</h1>
			</div>
			<form name="Resubmit" method="post" action="/ESBMonitoring/monres_resubmission.dsp" target="details">
				<input type=submit onClick="getOutputPayload();" value='Resubmit' class="outline-button outline-success-button">
				<input type="hidden" name="CONTEXTID" value=%value CONTEXTID%/> 
			</form>
		</div>
	</div>
	
	<div class="form-actions-container">
		<form name="payloadInput" method="post" action="/ESBMonitoring/monres_payload.dsp" target="details">
			<input type=submit onClick="getInputPayload();" value='Input Pipeline' class="outline-button">
			<input type="hidden" name="LOGTYPE" value ="START"/>
			<input type="hidden" name="CONTEXTID" value=%value CONTEXTID%/>
		</form>
		<form name="payloadOutput" method="post" action="/ESBMonitoring/monres_payload.dsp" target="details">
			<input type=submit onClick="getOutputPayload();" value='Output Pipeline' class="outline-button">
			<input type="hidden" name="LOGTYPE" value ="NOTSTART"/>
			<input type="hidden" name="CONTEXTID" value=%value CONTEXTID%/>
		</form>
	</div>
	
<table class = "noborder" width=70% cellpadding="0" cellspacing="0">
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
</body>