<!doctype html>
  <HTML>
   <HEAD>

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<META HTTP-EQUIV="Expires" CONTENT="-1">
      <TITLE>Services
      </TITLE>
      <LINK REL="stylesheet" TYPE="text/css" HREF="css/statistics.css">
	  <SCRIPT SRC="js/statistic.js"></SCRIPT>
	    <script type="text/javascript">
  <!--

  -->
  </script>

      <style>
a { color: inherit; text-decoration: none;}

    </style>
  </HEAD>

   <BODY >
	   <!--Hidden values -->
	  <div style="display:none">
	     <select id="servicesTypesSelect">
		%invoke ESBMonitoring.metrics.services.pub:getServicesTypes%
			%loop ServicesTypes%				
				  <option value="%value serviceName%">%value serviceType%</option>				
			%endloop%
		%endinvoke%
		</select>
	  </div>
   
      <TABLE width=100% cellpadding="0" cellspacing="0">
         <TR>
            <TD class="menusectionHeader" colspan="3">Services &gt; Overview</TD>
         </TR>
		 		 
      </TABLE>
	  <TABLE>
			<TR>
				<TD colspan="2">
				<UL>	
				<LI><a href="TodaysOverview.dsp">Refresh this Page</a>
				</UL>	
				</TD>
			</TR>
		</TABLE>
      
	  %invoke ESBMonitoring.metrics.userInterface:displayMetricsToday%
      <TABLE class="tableView" width="100%">
                  <TR>
                    <TD colspan="13" class="tableHeader" >Service List (%value count%)</TD>
       %endinvoke%           
                  </TR>
                  <TR class="headerrow">
					<TD nowrap style="cursor: pointer;" align="left" onclick="clickOnImage('serviceNameSort')">
					<form id="serviceNameForm" action="overview.dsp" method="get"> 
					Service Name
					<input type="hidden" name="sortFieldName" id ="serviceSortFieldName" value="serviceName" >
					<input type="hidden" name="sortOrder" id ="serviceNameSortOrder" value="">
					<input type="hidden" name="filterServiceName" id ="nameFilterForServiceNameSort">
					<input type="hidden" name="excludeMatching" id ="excludeMatchingForServiceNameSort">
					<!-- input type="image" id="serviceNameSort" src="images/sort_descending.PNG" alt="image not found" style="border:0; padding: 0; margin:0;" onclick="toggleImage('serviceNameSort','serviceNameSortOrder')" -->
					<script>
						showArrowsAfterRefresh('serviceNameSort','serviceName');						
					</script>			
					</form>
					
					</TD>
                    <TD nowrap style="cursor: pointer;" align="right" onclick="clickOnImage('countSort')">
					<form id="countForm" action="overview.dsp" method="get"> 
					Count
					<input type="hidden" name="sortFieldName" id ="countSortFieldName" value="count" >
					<input type="hidden" name="sortOrder" id ="countSortOrder" value="">
					<input type="hidden" name="filterServiceName" id ="nameFilterForCountSort">
					<input type="hidden" name="excludeMatching" id ="excludeMatchingForCountSort">
					<!-- input type="image" id="countSort" src="images/sort_descending.PNG" alt="image not found" style="border:0; padding: 0; margin:0;" onclick="toggleImage('countSort','countSortOrder')" -->
					<script>
						showArrowsAfterRefresh('countSort','count');						
					</script>
					</form>				
					</TD>
					
							
					<TD nowrap style="cursor: pointer;" onclick="clickOnImage('averageTimeSort')">
					<form id="averageTimeForm" action="overview.dsp" method="get"> 
					Average Time
					<input type="hidden" name="sortFieldName" id ="averageTimeFieldName" value="averageTime" >
					<input type="hidden" name="sortOrder" id ="averageTimeSortOrder" value="">
					<input type="hidden" name="filterServiceName" id ="nameFilterForAverageTimeSort">
					<input type="hidden" name="excludeMatching" id ="excludeMatchingForAverageTimeSort">
					<!-- input type="image" id="averageTimeSort" src="images/sort_descending.PNG" alt="image not found" style="border:0; padding: 0; margin:0;" onclick="toggleImage('averageTimeSort','averageTimeSortOrder')" -->
					<script>
						showArrowsAfterRefresh('averageTimeSort','averageTime');						
					</script>
					</form>
					</TD>					
					
					<TD nowrap style="cursor: pointer;" onclick="clickOnImage('minTimeSort')">
					<form id="minTimeForm" action="overview.dsp" method="get"> 
					Min Time
					<input type="hidden" name="sortFieldName" id ="minTimeFieldName" value="minTime" >
					<input type="hidden" name="sortOrder" id ="minTimeSortOrder" value="">
					<input type="hidden" name="filterServiceName" id ="nameFilterForMinTimeSort">
					<input type="hidden" name="excludeMatching" id ="excludeMatchingForMinTimeSort">
					<!-- input type="image" id="minTimeSort" src="images/sort_descending.PNG" alt="image not found" style="border:0; padding: 0; margin:0;" onclick="toggleImage('minTimeSort','minTimeSortOrder')" -->
					<script>
						showArrowsAfterRefresh('minTimeSort','minTime');						
					</script>
					</form>
					</TD>
						
                    <TD nowrap style="cursor: pointer;" onclick="clickOnImage('maxTimeSort')">
					<form id="maxTimeForm" action="overview.dsp" method="get">
					Max Time
					<input type="hidden" name="sortFieldName" id ="maxTimeFieldName" value="maxTime" >
					<input type="hidden" name="sortOrder" id ="maxTimeSortOrder" value="">
					<input type="hidden" name="filterServiceName" id ="nameFilterForMaxTimeSort">
					<input type="hidden" name="excludeMatching" id ="excludeMatchingForMaxTimeSort">
					<!-- input type="image" id="maxTimeSort" src="images/sort_descending.PNG" alt="image not found" style="border:0; padding: 0; margin:0;" onclick="toggleImage('maxTimeSort','maxTimeSortOrder')" -->
					<script>
						showArrowsAfterRefresh('maxTimeSort','maxTime');						
					</script>
					</form>
					</TD>          
					
                   			
					
                  </TR>
				  <TR class="darkrow">
		
					<TD nowrap  colspan="10">
					<script type="text/javascript">
						setDefaultFilterCriteria();
						var rowOdd= true;
					</script>
					</TD>
				  </TR>
 
                  %loop ServicesStatistic%
                  <TR id = "service_stat_row_%value SERVICENAME%">
					<script type="text/javascript">
						setRowStyle('service_stat_row_%value SERVICENAME%', rowOdd);
						var rowOdd= !rowOdd;
					</script>
                    <!-- TD style="cursor:pointer"align="left"><a href="serviceCalls.dsp?serviceName=%value SERVICENAME%">%value SERVICENAME%</a></TD -->
					<TD align="left">%value SERVICENAME%</TD>
                    <TD align="left" onClick="getServiceType('%value serviceName%')">%value DAY_SERVICECOUNT%</TD>
					<TD align="right">%value DAY_AVGTIME%</TD>
                    <TD align="right">%value DAY_MINTIME%</TD>
                    <TD align="right">%value DAY_MAXTIME%</TD>
                  </TR>



                  %endloop%
                  %endinvoke%
	</TABLE>
    </BODY>
 </HTML>