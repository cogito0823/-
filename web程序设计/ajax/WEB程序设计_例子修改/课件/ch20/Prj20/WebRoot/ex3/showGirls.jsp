<%@ page language="java" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>  
  <body onload="showGirls()">
  	<SCRIPT LANGUAGE="JavaScript">
  		function showGirls(){	
 	  		var xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
	  		var url = "/servlet/ShowStudentServlet?stusex=Ů";
			xmlHttp.open("GET", url, true);				
			xmlHttp.onreadystatechange=function() {
				if (xmlHttp.readyState==4) {
					var xmlDom = xmlHttp.responseXml;
					var stunames = 
xmlDom.getElementsByTagName("stuname");
					girlsDiv.innerHTML = "";
					for(i=0;i<stunames.length;i++){			
						var stuname = stunames[i].text;
						girlsDiv.innerHTML += (stuname + "<BR>");
					}
				}
			}
			xmlHttp.send();	
			window.setTimeout("showGirls()","5000");
  		}
	</SCRIPT>
	������ϵͳ�е�Ů����<HR>
	<div id="girlsDiv"></div>
  </body>
</html>
