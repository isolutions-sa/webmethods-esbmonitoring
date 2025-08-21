<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services Today - ESB Monitoring</title>
    <link rel="stylesheet" href="css/isolution-design.css">
    <script src="js/modern-styles.js"></script>
    <script src="js/statistic.js"></script>
</head>
<body id="modern-body">
    <div id="modern-container">
        <!-- Page Header -->
        <div id="page-header">
            %invoke ESBMonitoring.logging.userInterface:displayToday%
            <div id="header-content">
                <div>
                    <h1 id="page-title">Services Today</h1>
                    <div id="page-meta">
                        <span id="info-badge">%value count% Services</span>
                        <span id="timestamp">Updated: <span data-current-time></span></span>
                    </div>
                </div>
                <div id="refresh-button"></div>
            </div>
        </div>

        <!-- Modern Table -->
        <div id="table-container">
            <table id="main-table">
                <thead id="table-head">
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
                            <span class="status-badge" data-status="%value SERVICEDISPLAYLOG%">%value SERVICEDISPLAYLOG%</span>
                        </td>
                        <td class="table-cell-bold">%value SERVICENAME%</td>
                        <td class="table-cell">%value SERVICEDISPLAYLOG%</td>
                        <td class="table-cell">%value TIMESTAMP%</td>
                        <td class="table-cell">%value SERVERINFORMATION%</td>
                        <td class="table-cell-mono">%value CONTEXTID%</td>
                        <td class="table-cell-center">
                            <a href="monres_serviceDetails.dsp?CONTEXTID=%value CONTEXTID%&SERVICEDISPLAYLOG=%value SERVICEDISPLAYLOG%" class="action-button" title="View Details">
                                <svg style="width: 16px; height: 16px; fill: white;" viewBox="0 0 24 24"><path d="M12,9A3,3 0 0,0 9,12A3,3 0 0,0 12,15A3,3 0 0,0 15,12A3,3 0 0,0 12,9M12,17A5,5 0 0,1 7,12A5,5 0 0,1 12,7A5,5 0 0,1 17,12A5,5 0 0,1 12,17M12,4.5C7,4.5 2.73,7.61 1,12C2.73,16.39 7,19.5 12,19.5C17,19.5 21.27,16.39 23,12C21.27,7.61 17,4.5 12,4.5Z" /></svg>
                            </a>
                        </td>
                    </tr>
                    %endloop%
                    %endinvoke%
                </tbody>
            </table>
        </div>
    </div>

    <script>
        // Apply styles using ModernStyles library
        document.getElementById('modern-body').style.cssText = ModernStyles.page.body;
        document.getElementById('modern-container').style.cssText = ModernStyles.page.container;
        
        // Header styles
        document.getElementById('page-header').style.cssText = ModernStyles.header.simple;
        document.getElementById('header-content').style.cssText = ModernStyles.header.flex;
        document.getElementById('page-title').style.cssText = ModernStyles.header.title;
        document.getElementById('page-meta').style.cssText = ModernStyles.header.meta;
        document.getElementById('info-badge').style.cssText = ModernStyles.header.badge;
        document.getElementById('timestamp').style.cssText = ModernStyles.header.timestamp;
        
        // Refresh button using utility function
        document.getElementById('refresh-button').innerHTML = ModernStyles.utils.iconButton('monres_Today.dsp', 'refresh', 'Refresh', 'outline');
        
        // Table styles
        document.getElementById('table-container').style.cssText = ModernStyles.table.container;
        document.getElementById('main-table').style.cssText = ModernStyles.table.table;
        document.getElementById('table-head').style.cssText = ModernStyles.table.header;
        
        // Apply styles to table elements
        document.querySelectorAll('.table-header-cell').forEach(cell => {
            cell.style.cssText = ModernStyles.table.headerCell;
        });
        
        document.querySelectorAll('.table-row').forEach(row => {
            row.style.cssText = ModernStyles.table.row;
            row.onmouseover = function() { eval(ModernStyles.hover.tableRow.over); };
            row.onmouseout = function() { eval(ModernStyles.hover.tableRow.out); };
        });
        
        document.querySelectorAll('.table-cell').forEach(cell => {
            cell.style.cssText = ModernStyles.table.cell;
        });
        
        document.querySelectorAll('.table-cell-bold').forEach(cell => {
            cell.style.cssText = ModernStyles.table.cellBold;
        });
        
        document.querySelectorAll('.table-cell-center').forEach(cell => {
            cell.style.cssText = ModernStyles.table.cellCenter;
        });
        
        document.querySelectorAll('.table-cell-mono').forEach(cell => {
            cell.style.cssText = ModernStyles.table.cellMono;
        });
        
        // Apply status badges
        document.querySelectorAll('.status-badge').forEach(badge => {
            const status = badge.getAttribute('data-status').toLowerCase();
            const text = badge.textContent;
            badge.innerHTML = ModernStyles.utils.statusBadge(status, text);
        });
        
        // Apply action button styles
        document.querySelectorAll('.action-button').forEach(btn => {
            btn.style.cssText = ModernStyles.button.small;
            btn.onmouseover = function() { eval(ModernStyles.hover.buttonSmall.over); };
            btn.onmouseout = function() { eval(ModernStyles.hover.buttonSmall.out); };
        });
    </script>
</body>