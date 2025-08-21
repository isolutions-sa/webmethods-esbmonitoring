/*
Modern Styles Library for ESB Monitoring
Reusable inline styles for WebMethods DSP pages
*/

const ModernStyles = {
    // Page Layout Styles
    page: {
        body: "font-family: 'Product Sans', sans-serif; background: #f8f9fa; margin: 0; padding: 20px;",
        container: "max-width: 1200px; margin: 0 auto;"
    },

    // Header Styles
    header: {
        simple: "padding: 0 0 24px 0; margin-bottom: 24px; border-bottom: 1px solid #e9ecef;",
        flex: "display: flex; justify-content: space-between; align-items: center;",
        title: "font-family: 'Product Sans', sans-serif; font-weight: 700; font-size: 32px; color: #333; margin: 0 0 8px 0;",
        meta: "display: flex; align-items: center; gap: 16px;",
        badge: "background: #0068c4; color: white; padding: 4px 12px; border-radius: 20px; font-size: 14px; font-weight: 600;",
        timestamp: "color: #6c757d; font-size: 14px;"
    },

    // Button Styles
    button: {
        primary: "display: inline-flex; align-items: center; gap: 8px; background: #0068c4; color: white; padding: 12px 20px; border-radius: 8px; text-decoration: none; font-weight: 500; transition: all 0.2s ease; box-shadow: 0 2px 8px rgba(0, 104, 196, 0.3);",
        outline: "display: inline-flex; align-items: center; gap: 8px; background: transparent; color: #0068c4; padding: 8px 16px; border: 2px solid #0068c4; border-radius: 8px; text-decoration: none; font-weight: 500; transition: all 0.2s ease;",
        small: "display: inline-flex; align-items: center; justify-content: center; width: 32px; height: 32px; background: #0068c4; border-radius: 6px; text-decoration: none; transition: all 0.2s ease;"
    },

    // Table Styles
    table: {
        container: "background: white; border-radius: 12px; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08); overflow: hidden;",
        table: "width: 100%; border-collapse: collapse;",
        header: "background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);",
        headerCell: "padding: 16px; text-align: left; font-weight: 600; color: #495057; font-size: 12px; text-transform: uppercase; letter-spacing: 0.5px; border-bottom: 2px solid #dee2e6;",
        row: "border-bottom: 1px solid #f1f3f5; transition: background-color 0.2s ease;",
        cell: "padding: 16px; color: #495057; font-size: 14px;",
        cellBold: "padding: 16px; color: #495057; font-size: 14px; font-weight: 500;",
        cellMono: "padding: 16px; color: #6c757d; font-size: 12px; font-family: monospace;",
        cellCenter: "padding: 16px; text-align: center;"
    },

    // Status Badge Styles
    status: {
        completed: "display: inline-flex; align-items: center; gap: 6px; padding: 6px 12px; border-radius: 20px; font-size: 12px; font-weight: 500; background: #d3f9d8; color: #2b8a3e;",
        failed: "display: inline-flex; align-items: center; gap: 6px; padding: 6px 12px; border-radius: 20px; font-size: 12px; font-weight: 500; background: #ffe0e0; color: #c92a2a;",
        started: "display: inline-flex; align-items: center; gap: 6px; padding: 6px 12px; border-radius: 20px; font-size: 12px; font-weight: 500; background: #fff3cd; color: #f08c00;",
        resubmitted: "display: inline-flex; align-items: center; gap: 6px; padding: 6px 12px; border-radius: 20px; font-size: 12px; font-weight: 500; background: #e6f0ff; color: #0068c4;",
        dot: "width: 8px; height: 8px; border-radius: 50%; background: currentColor;"
    },

    // Icon SVG Templates
    icons: {
        refresh: '<svg style="width: 16px; height: 16px; fill: currentColor;" viewBox="0 0 24 24"><path d="M17.65,6.35C16.2,4.9 14.21,4 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20C15.73,20 18.84,17.45 19.73,14H17.65C16.83,16.33 14.61,18 12,18A6,6 0 0,1 6,12A6,6 0 0,1 12,6C13.66,6 15.14,6.69 16.22,7.78L13,11H20V4L17.65,6.35Z" /></svg>',
        view: '<svg style="width: 16px; height: 16px; fill: white;" viewBox="0 0 24 24"><path d="M12,9A3,3 0 0,0 9,12A3,3 0 0,0 12,15A3,3 0 0,0 15,12A3,3 0 0,0 12,9M12,17A5,5 0 0,1 7,12A5,5 0 0,1 12,7A5,5 0 0,1 17,12A5,5 0 0,1 12,17M12,4.5C7,4.5 2.73,7.61 1,12C2.73,16.39 7,19.5 12,19.5C17,19.5 21.27,16.39 23,12C21.27,7.61 17,4.5 12,4.5Z" /></svg>',
        home: '<svg style="width: 18px; height: 18px; fill: #0068c4;" viewBox="0 0 24 24"><path d="M10,20V14H14V20H19V12H22L12,3L2,12H5V20H10Z" /></svg>',
        logout: '<svg style="width: 18px; height: 18px; fill: #0068c4;" viewBox="0 0 24 24"><path d="M16,17V14H9V10H16V7L21,12L16,17M14,2A2,2 0 0,1 16,4V6H14V4H5V20H14V18H16V20A2,2 0 0,1 14,22H5A2,2 0 0,1 3,20V4A2,2 0 0,1 5,2H14Z" /></svg>'
    },

    // Hover Effects (JavaScript functions)
    hover: {
        buttonPrimary: {
            over: "this.style.background='#0056a3'; this.style.transform='translateY(-1px)'",
            out: "this.style.background='#0068c4'; this.style.transform='translateY(0)'"
        },
        buttonOutline: {
            over: "this.style.background='#0068c4'; this.style.color='white'",
            out: "this.style.background='transparent'; this.style.color='#0068c4'"
        },
        buttonSmall: {
            over: "this.style.background='#0056a3'",
            out: "this.style.background='#0068c4'"
        },
        tableRow: {
            over: "this.style.backgroundColor='#f8f9fa'",
            out: "this.style.backgroundColor='white'"
        }
    },

    // Utility Functions
    utils: {
        // Generate a status badge with dot
        statusBadge: function(status, text) {
            const style = ModernStyles.status[status.toLowerCase()] || ModernStyles.status.started;
            return `<span style="${style}"><span style="${ModernStyles.status.dot}"></span>${text}</span>`;
        },

        // Generate current timestamp
        currentTime: function() {
            return new Date().toLocaleTimeString();
        },

        // Create a styled button with icon
        iconButton: function(href, icon, text, type = 'outline') {
            const buttonStyle = ModernStyles.button[type];
            const hoverEvents = type === 'primary' ? ModernStyles.hover.buttonPrimary : ModernStyles.hover.buttonOutline;
            return `<a href="${href}" style="${buttonStyle}" onmouseover="${hoverEvents.over}" onmouseout="${hoverEvents.out}">${ModernStyles.icons[icon]}${text}</a>`;
        }
    }
};

// Initialize timestamp elements when DOM loads
document.addEventListener('DOMContentLoaded', function() {
    const timeElements = document.querySelectorAll('[data-current-time]');
    timeElements.forEach(element => {
        element.textContent = ModernStyles.utils.currentTime();
    });
});