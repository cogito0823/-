<%@ page language="java" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
  <body>
  	<SCRIPT LANGUAGE="JavaScript">
  		function getStunames(stusex){
  			var div = document.getElementById(stusex);
  			if(div.innerHTML!=""){
  				div.innerHTML = "";
  				return;
  			}
 	  		var xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
	  		var url = "/servlet/ShowStudentServlet?stusex="+stusex;
	  		alert(url);
			xmlHttp.open("GET", url, true);				
			xmlHttp.onreadystatechange=function() {
				if (xmlHttp.readyState==4) {
					var xmlDom = xmlHttp.responseXml;
					var stunames = xmlDom.getElementsByTagName("stuname");					
					for(i=0;i<stunames.length;i++){			
						var stuname = stunames[i].text;
						div.innerHTML += ("<LI>" + stuname+"<BR>");
					}
				}
			}
			xmlHttp.send();	
  		}
	</SCRIPT>
	��ʾѧ����Ϣ<BR>
    	ѧ���Ա�<BR>
    	<a onclick="getStunames('��')">��</a><BR><span id="��"></span>
    	<a onclick="getStunames('Ů')">Ů</a><BR><span id="Ů"></span>
  </body>
</html>
