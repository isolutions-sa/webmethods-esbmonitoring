<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
  <HTML>
   <HEAD>

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<META HTTP-EQUIV="Expires" CONTENT="-1">
      <TITLE>Services
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
		 .info-badge{
			background: #0068c4; 
			color: white; 
			padding: 4px 12px; 
			border-radius: 20px; 
			font-size: 14px; 
			font-weight: 600;
		 }
		 .timestamp{
			color: #6c757d;
			font-size: 14px;
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
		 /* TABLE */
		 
		 .table-container{
			background: white; 
			border-radius: 12px; 
			box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08); 
			overflow-x: auto;
			padding:20px;
		 }
		 .main-table{
			width: 100%;
			border-collapse: collapse;
			table-layout: auto;
		 }
		 .table-head{
			background: var(--isolution-soft-blue);
			margin-bottom: 15px;
		
		 }
		 .table-header-cell{
			padding: 8px; 
			text-align: left; 
			font-weight: 600; 
			color: #495057; 
			font-size: 12px; 
			text-transform: uppercase; 
			letter-spacing: 0.5px; 
		 }
		 .table-header-cell:first-child{
			border-top-left-radius:8px;
			border-bottom-left-radius: 8px;
		 }
		 .table-header-cell:last-child{
			border-top-right-radius:8px;
			border-bottom-right-radius: 8px;
		 }
		 .table-row{
			border-bottom: 1px solid #f1f3f5; 
			transition: background-color 0.2s ease;
		 }
		 .table-cell{
			padding: 12px 8px; 
			color: #495057; 
			font-size: 12px;
		 }
		 .table-cell-bold{
			padding: 12px 8px; 
			color: #495057; 
			font-size: 12px; 
			font-weight: 500;
		 }
		 .table-cell-center{
			padding: 12px 8px; 
			text-align: center;
		 }
		 .table-cell-mono{
			padding: 12px 8px; 
			color: #6c757d; 
			font-size: 12px; 
			font-family: monospace;
		 }
		 .table-cell-ellipsis {
			white-space: nowrap;
			overflow: hidden;
			text-overflow: ellipsis;
			max-width: 200px; /* adjust */
		}
		 /* STATUS */
		 .status-dot{
			display: inline-block;
			width: 8px;
			height: 8px;
			border-radius: 50%;
			background: currentColor;
		 }
		 .status-completed{
			display: inline-flex; 
			align-items: center; 
			gap: 6px; 
			padding: 4px; 
			border-radius: 4px; 
			font-size: 10px; 
			font-weight: 500; 
			background: #d3f9d8; 
			color: var(--isolution-active-status);
		 }
		 .status-failed{
			display: inline-flex; 
			align-items: center; 
			gap: 6px; 
			padding: 4px; 
			border-radius: 4px; 
			font-size: 10px; 
			font-weight: 500; 
			background: #ffe0e0; 
			color: var(--isolution-suspended-status);
		 }
		 .status-started{
			display: inline-flex; 
			align-items: center; 
			gap: 6px; 
			padding: 4px; 
			border-radius: 4px; 
			font-size: 10px; 
			font-weight: 500; 
			background: #fff3cd; 
			color: var(--isolution-pending-status);
		 }
		 .status-resubmitted{
			display: inline-flex; 
			align-items: center; 
			gap: 6px; 
			padding: 4px; 
			border-radius: 4px; 
			font-size: 10px; 
			font-weight: 500; 
			background: #e6f0ff; 
			color: var(--isolution-dark-blue);
		}
		.action-button{
			display: inline-flex; 
			align-items: center; 
			justify-content: center;
			width: 28px; 
			height: 28px; 
			background: var(--isolution-mid-blue); 
			border-radius: 6px; text-decoration: none; 
			transition: all 0.2s ease;
		}
		.action-button:hover{
			background: var(--isolution-dark-blue);
		}
	</style>
</HEAD>
<body>
%invoke ESBMonitoring.logging.userInterface:displayMainPage%

	<!-- Page Header -->
	<div class="page-header">
		%invoke ESBMonitoring.logging.userInterface:displayToday%
		<div class="header-content">
			<div>
				<h1 class="page-title">Today's Transactions</h1>
				<div class="page-meta">
					<span class="info-badge">%value count% Services</span>
				</div>
			</div>
			<a href="monres_overview.dsp" class="outline-button">
				<svg style="width: 21px; height: 21px; fill: currentColor;" viewBox="0 0 24 24">
					<path d="M17.65,6.35C16.2,4.9 14.21,4 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20C15.73,20 18.84,17.45 19.73,14H17.65C16.83,16.33 14.61,18 12,18A6,6 0 0,1 6,12A6,6 0 0,1 12,6C13.66,6 15.14,6.69 16.22,7.78L13,11H20V4L17.65,6.35Z" />
				</svg>
				Refresh
			</a>
		</div>
	</div>

	<div class="table-container">
		<table class="main-table">
			<thead class="table-head">
				<tr>
					<th class="table-header-cell">
						<input type="checkbox">
					</th>
					<th class="table-header-cell">Status</th>
					<th class="table-header-cell">Service Name</th>
					<th class="table-header-cell">Status</th>
					<th class="table-header-cell">Start Time</th>
					<th class="table-header-cell">Server</th>
					<th class="table-header-cell">Context ID</th>
					<th class="table-header-cell" style="text-align: center;">Actions</th>
				</tr>
			</thead>
			
			<tbody>
				%loop resultsOut%
				<tr class="table-row">
					<td class="table-cell-center">
						<input type="checkbox" name="select" value="%value CONTEXTID%">
					</td>
					<td class="table-cell-center">
						%switch SERVICEDISPLAYLOG%
						%case 'COMPLETED'%
							<span class="status-completed"><span class="status-dot"></span>%value SERVICEDISPLAYLOG%</span>
						%case 'FAILED'%
							<span class="status-failed"><span class="status-dot"></span>%value SERVICEDISPLAYLOG%</span>							
						%case 'STARTED'% 
							<span class="status-started"><span class="status-dot"></span>%value SERVICEDISPLAYLOG%</span>
						%case 'RESUBMITTED'%
							<span class="status-resubmitted"><span class="status-dot"></span>%value SERVICEDISPLAYLOG%</span>
						%endswitch% 
					</td>
					<td class="table-cell-bold table-cell-ellipsis">%value SERVICENAME%</td>
					<td class="table-cell">%value SERVICEDISPLAYLOG%</td>
					<td class="table-cell">%value TIMESTAMP%</td>
					<td class="table-cell">%value SERVERINFORMATION%</td>
					<td class="table-cell-mono">%value CONTEXTID%</td>
					<td class="table-cell-center">
						<a href="monres_serviceDetails.dsp?CONTEXTID=%value CONTEXTID%&SERVICEDISPLAYLOG=%value SERVICEDISPLAYLOG%" class="action-button" title="View Details">
							<svg style="width: 12px; height: 12px; fill: white;" viewBox="0 0 24 24"><path d="M12,9A3,3 0 0,0 9,12A3,3 0 0,0 12,15A3,3 0 0,0 15,12A3,3 0 0,0 12,9M12,17A5,5 0 0,1 7,12A5,5 0 0,1 12,7A5,5 0 0,1 17,12A5,5 0 0,1 12,17M12,4.5C7,4.5 2.73,7.61 1,12C2.73,16.39 7,19.5 12,19.5C17,19.5 21.27,16.39 23,12C21.27,7.61 17,4.5 12,4.5Z" /></svg>
						</a>
					</td>
				</tr>
				%endloop%
				%endinvoke%
			</tbody>
		</table>
	</div>
</body>