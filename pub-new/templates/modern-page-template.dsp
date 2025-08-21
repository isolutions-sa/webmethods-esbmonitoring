<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page Title - ESB Monitoring</title>
    <link rel="stylesheet" href="css/isolution-design.css">
    <script src="js/modern-styles.js"></script>
</head>
<body id="modern-body">
    <div id="modern-container">
        <!-- Page Header -->
        <div id="page-header">
            %invoke YourService:YourMethod%
            <div id="header-content">
                <div>
                    <h1 id="page-title">Your Page Title</h1>
                    <div id="page-meta">
                        <span id="info-badge">%value count% Items</span>
                        <span id="timestamp">Updated: <span data-current-time></span></span>
                    </div>
                </div>
                <span id="refresh-button"></span>
            </div>
        </div>

        <!-- Modern Table -->
        <div id="table-container">
            <table id="main-table">
                <thead id="table-head">
                    <tr>
                        <th id="col-select">
                            <input type="checkbox">
                        </th>
                        <th id="col-status">Status</th>
                        <th id="col-name">Name</th>
                        <!-- Add more columns as needed -->
                    </tr>
                </thead>
                <tbody>
                    %loop yourData%
                    <tr id="table-row">
                        <td id="cell-select">
                            <input type="checkbox" value="%value ID%">
                        </td>
                        <td id="cell-status">
                            <!-- Status badge will be inserted here -->
                        </td>
                        <td id="cell-name">%value NAME%</td>
                    </tr>
                    %endloop%
                    %endinvoke%
                </tbody>
            </table>
        </div>
    </div>

    <script>
        // Apply styles using the ModernStyles library
        document.getElementById('modern-body').style.cssText = ModernStyles.page.body;
        document.getElementById('modern-container').style.cssText = ModernStyles.page.container;
        
        // Header styles
        document.getElementById('page-header').style.cssText = ModernStyles.header.simple;
        document.getElementById('header-content').style.cssText = ModernStyles.header.flex;
        document.getElementById('page-title').style.cssText = ModernStyles.header.title;
        document.getElementById('page-meta').style.cssText = ModernStyles.header.meta;
        document.getElementById('info-badge').style.cssText = ModernStyles.header.badge;
        document.getElementById('timestamp').style.cssText = ModernStyles.header.timestamp;
        
        // Refresh button
        document.getElementById('refresh-button').innerHTML = ModernStyles.utils.iconButton('your-page.dsp', 'refresh', 'Refresh');
        
        // Table styles
        document.getElementById('table-container').style.cssText = ModernStyles.table.container;
        document.getElementById('main-table').style.cssText = ModernStyles.table.table;
        document.getElementById('table-head').style.cssText = ModernStyles.table.header;
        
        // Apply header cell styles
        document.querySelectorAll('[id^="col-"]').forEach(cell => {
            cell.style.cssText = ModernStyles.table.headerCell;
        });
        
        // Apply row hover effects
        document.querySelectorAll('[id="table-row"]').forEach(row => {
            row.style.cssText = ModernStyles.table.row;
            row.onmouseover = function() { eval(ModernStyles.hover.tableRow.over); };
            row.onmouseout = function() { eval(ModernStyles.hover.tableRow.out); };
        });
        
        // Apply cell styles
        document.getElementById('cell-select').style.cssText = ModernStyles.table.cellCenter;
        document.getElementById('cell-status').style.cssText = ModernStyles.table.cellCenter;
        document.getElementById('cell-name').style.cssText = ModernStyles.table.cellBold;
    </script>
</body>
</html>