	function drawPercentageBar(procent){
			var percentageStr = procent+ "%";
		var intPercentage = parseInt(procent, 10);
		var leftSideText = "";
		var rightSideText = "";
		if (intPercentage > 50){
			leftSideText = percentageStr;
		}else{
			rightSideText = percentageStr;
		}
		document.write("<TD style=\"border:0; padding: 0; margin:0;\" width=\""+intPercentage+"px\" bgcolor=\"#00CC00\">"+leftSideText+"</TD>");
		document.write("<TD style=\"border:0; padding: 0; margin:0; color:white;\" width=\""+(100-intPercentage)+"px\" bgcolor=\"#330066\" align=\"right\">"+rightSideText+"</TD>");									
	
	}
	
	function getServiceTypeImage(serviceName){	
		var serviceType = getServiceType(serviceName);
		var imageSrc = "img/unknown_service.PNG ";
		if (serviceType == "flow"){
			imageSrc = "img/flow_service.PNG";
		}else if (serviceType == "java"){
				imageSrc = "img/java_service.PNG";
		}else if (serviceType == "AdapterService"){
			imageSrc = "img/adapter_service.PNG";
		}
		return imageSrc;
	}
	
	
	function getServiceType(serviceName){
		var serviceTypes = document.getElementById('servicesTypesSelect');
		for (i=0;i<serviceTypes.options.length;i++){		
			if (serviceName == serviceTypes.options[i].value){				
				return serviceTypes.options[i].text;
			}
		}
		return "unknown";
	}
	
	
		function removeEmptyLastTreeRow(id){			
			var doc = document.getElementById(id);
			var lenght = doc.getElementsByTagName("table").length;
			
			if (length >0){
				doc.getElementsByTagName("table")[lenght-1].deleteRow(1);
			}
		}
		
	function browserBack(){
		window.history.back();
	}
	
		
	function setRowStyle(id, oddRow){
		var myClass;
		if(oddRow){
			myClass = "oddrow";
		}else{
			myClass = "evenrow";
		}
		document.getElementById(id).className = myClass;		
	}
	
	function clickLink(id){
		document.getElementById(id).click();
	}	
