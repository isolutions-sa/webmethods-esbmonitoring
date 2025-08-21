<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">
    <title>ESB Monitoring Header</title>
    <link rel="stylesheet" href="webMethods.css">
    <link rel="stylesheet" href="css/isolution-design.css">
    <link rel="stylesheet" href="css/modern-welcome.css">
</head>
<body class="modern-layout">
    <div style="background: radial-gradient(148.48% 136.64% at 3.19% 1.57%, #f5e6ff 0%, #e6f0ff 100%); height: 50px; padding: 0 24px; display: flex; align-items: center; justify-content: space-between; width: 100%; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);">
        <div style="display: flex; align-items: center; gap: 14px;">
            <img src="images/geidea.png" alt="Geidea Logo" style="height: 32px; width: auto;">
            <div style="height: 32px; width: 1px; background: rgba(51, 51, 51, 0.2);"></div>
            <h1 style="font-family: 'Product Sans', sans-serif; font-weight: 700; font-size: 18px; color: #333; margin: 0; letter-spacing: 0.3px;">ESB Monitoring</h1>
        </div>
        
        <div style="display: flex; align-items: center; gap: 20px;">
            <div style="color: #333; font-family: 'Product Sans', sans-serif;">
                %invoke ESBMonitoring.access:determineAccessLevel%
                <span style="font-size: 14px; font-weight: 500;">Welcome,</span>
                <span style="font-size: 14px; font-weight: 700; margin-left: 4px; color: #0068c4;">%value USER%</span>
                %endinvoke%
            </div>
            
            <div style="display: flex; align-items: center; gap: 8px;">
                <a href="index.html" target="_parent" style="display: inline-flex; align-items: center; justify-content: center; width: 36px; height: 36px; background: rgba(255, 255, 255, 0.15); border-radius: 6px; text-decoration: none; transition: all 0.2s ease; border: 1px solid rgba(255, 255, 255, 0.2);" title="Home" onmouseover="this.style.background='rgba(255, 255, 255, 0.25)'; this.style.transform='translateY(-1px)'" onmouseout="this.style.background='rgba(255, 255, 255, 0.15)'; this.style.transform='translateY(0)'">
                    <svg style="width: 18px; height: 18px; fill: #0068c4;" viewBox="0 0 24 24"><path d="M10,20V14H14V20H19V12H22L12,3L2,12H5V20H10Z" /></svg>
                </a>
                <a href="../WmRoot/top-logoff.dsp" target="_parent" style="display: inline-flex; align-items: center; justify-content: center; width: 36px; height: 36px; background: rgba(255, 255, 255, 0.15); border-radius: 6px; text-decoration: none; transition: all 0.2s ease; border: 1px solid rgba(255, 255, 255, 0.2);" title="Logout" onclick="return confirm('OK to Log Off?')" onmouseover="this.style.background='rgba(255, 255, 255, 0.25)'; this.style.transform='translateY(-1px)'" onmouseout="this.style.background='rgba(255, 255, 255, 0.15)'; this.style.transform='translateY(0)'">
                    <svg style="width: 18px; height: 18px; fill: #0068c4;" viewBox="0 0 24 24"><path d="M16,17V14H9V10H16V7L21,12L16,17M14,2A2,2 0 0,1 16,4V6H14V4H5V20H14V18H16V20A2,2 0 0,1 14,22H5A2,2 0 0,1 3,20V4A2,2 0 0,1 5,2H14Z" /></svg>
                </a>
            </div>
        </div>
    </div>
</body>
</html>