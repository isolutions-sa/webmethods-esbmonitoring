<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<HTML>
<head>
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<META HTTP-EQUIV="Expires" CONTENT="-1">
<SCRIPT SRC="js/statistic.js"></SCRIPT>
    <title>ESB Monitoring</title>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Product+Sans:wght@300;400;500;700&display=swap');
		:root {
			--primary-font: 'Product Sans', sans-serif;
			--isolution-mid-blue: #0068c4;
			--isolution-dark-gray: #585858;
			--isolution-dark-red: #a61433;
			--isolution-layout-border: #e2e9ed;
		 }
		 body{
			padding: 0;
			border: 0;
			 -webkit-font-smoothing: antialiased;
			-moz-osx-font-smoothing: grayscale;
			font-smooth: antialiased;  
		 }
		 *, *::before, *::after {
			box-sizing: border-box;
		 }
		 th, td, body, input, p, textarea, select{
			font-family: var(--primary-font);
		 }
		 .header{
			display: flex;
			align-items: center;
			justify-content: space-between;
			height: 50px;
			padding: 0 10px;
			background:#ffffff;
			border-bottom: 1px solid var(--isolution-layout-border);
		 }
		 .header-content{
			display: flex;
			align-items: center;
			gap:14px;
		 }
		 .header-actions{
			display: flex;
			align-items: center;
			gap: 20px;
		 }
		 .spacer{
			width: 1px;
			height: 30px;
			background: rgba(51, 51, 51, 0.2);
		 }
		 h1{
			font-weight: 700;
			font-size: 16px;
			color: var(--isolution-dark-gray);
		 }
		 .username{
			font-size:12px;
			font-weight:700;
			color: var(--isolution-dark-gray)
		 }
		 .actions{
			display: flex;
			align-items: center;
			gap: 8px;
		 }
		 .action{
			display: inline-flex; 
			align-items: center; 
			justify-content: center; 
			width: 36px; 
			height: 36px; 
			border-radius: 6px; 
			text-decoration: none; 
			transition: all 0.2s ease; 
			border: 1px solid rgba(0, 0, 0, 0.2);
			transform= translateY(0);
			-webkit-transform: translateY(0);
			-moz-transform: translateY(0);
		 }
		 .action:hover{
			border: 1px solid rgba(0, 0, 0, 0.1);
			transform: translateY(-1px);
			-webkit-transform: translateY(-1px);
			-moz-transform: translateY(-1px);
		 }
		 .icon{
			width: 18px; 
			height: 18px; 
			fill: var(--isolution-mid-blue);
		 }
		 .logout{
			fill: var(--isolution-dark-red);
		 }
	</style>
</head>
<body>
    <div class="header">
        <div class="header-content">
            <img src="images/unifai.svg" alt="Unifai Logo" style="height: 22px; width: auto;">
            <div class="spacer"></div>
            <h1>ESB Monitoring</h1>
        </div>
        
        <div class="header-actions">
            <div>
                %invoke ESBMonitoring.access:determineAccessLevel%
                <span style="font-size:12px; color: var(--isolution-dark-gray)">Welcome,&nbsp;</span>
                <span class="username">%value USER%</span>
                %endinvoke%
            </div>
            
            <div class="actions">
                <a href="index.html" target="_parent" class="action" title="Home">
                    <svg class="icon" viewBox="0 0 24 24"><path d="M10,20V14H14V20H19V12H22L12,3L2,12H5V20H10Z" /></svg>
                </a>
                <a href="../WmRoot/top-logoff.dsp" target="_parent" class="action" title="Logout" onclick="return confirm('OK to Log Off?')" >
                    <svg class="icon logout" viewBox="0 0 24 24"><path d="M16,17V14H9V10H16V7L21,12L16,17M14,2A2,2 0 0,1 16,4V6H14V4H5V20H14V18H16V20A2,2 0 0,1 14,22H5A2,2 0 0,1 3,20V4A2,2 0 0,1 5,2H14Z" /></svg>
                </a>
            </div>
        </div>
    </div>
</body>
</HTML>
