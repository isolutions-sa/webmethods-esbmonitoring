<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
    <head>
        <title>Menu</title>
        <link rel="stylesheet" type="text/css" href="css/statistics.css">
		<link rel="stylesheet" type="text/css" href="css/isolution-design.css">
        <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
        <style>
			@import url('https://fonts.googleapis.com/css2?family=Product+Sans:wght@300;400;500;700&display=swap');
			:root {
				--primary-font: 'Product Sans', sans-serif;
				--isolution-dark-blue: #003ca4;
				--isolution-mid-blue: #0068c4;
				--isolution-dark-gray: #585858;
				--isolution-dark-red: #a61433;
				--isolution-soft-blue: #ebf1f7;
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
			 nav {
			  width: 100%;
			  height: 100vh;
			  background-color: #ffffff;
			  display: flex;
			  flex-direction: column;
			  border-right: 1px solid var(--isolution-layout-border);
			}

			.menu-header {
			  font-size: 14px;
			  color: var(--isolution-dark-gray);
			  font-weight: 700;
			  padding: 10px 15px 0 15px;
			  border-bottom: 1px solid rgba(255, 255, 255, 0.2);
			}

			ul {
			  list-style: none;
			  margin: 0;
			  padding: 0;
			  flex: 1;
			}

			li {
			 padding: 0 5px;
			}

			nav li a {
			  font-size:12px;
			  font-weight: 500;
			  display: flex;
			  align-items: center;
			  justify-content: space-between;
			  padding: 10px;
			  text-decoration: none;
			  color: var(--isolution-dark-gray);
			  border-radius:8px;
			}

			nav li a:hover {
			  color: #000000;
			  background-color: var(--isolution-soft-blue);
			}

			.chevron {
			  display: inline-block;
			  width: 6px;
			  height: 6px;
			  border-right: 2px solid var(--isolution-dark-gray);
			  border-bottom: 2px solid var(--isolution-dark-gray);
			  transform: rotate(-45deg);
			  margin-left: 8px;
			  opacity: 0.7;
			}
			
			nav li a:hover .chevron{
			  border-right: 2px solid #000000;
			  border-bottom: 2px solid #000000;
			}
        </style>
    </head>
    
    <body >
	  <nav>
		<div class="menu-header">Menu</div>
		<ul>
		  <li>
			<a href="monres_Today.dsp" target="details">
			  Transactions for Today <span class="chevron"></span>
			</a>
		  </li>
		  <li>
			<a href="monres_nonComplete.dsp" target="details">
			  Non-Complete Transactions <span class="chevron"></span>
			</a>
		  </li>
		  <li>
			<a href="monres_overview.dsp" target="details">
			  All Services <span class="chevron"></span>
			</a>
		  </li>
		  <li>
			<a href="monres_search.dsp" target="details">
			  Search Transactions <span class="chevron"></span>
			</a>
		  </li>
		</ul>
	  </nav>
    </body> 