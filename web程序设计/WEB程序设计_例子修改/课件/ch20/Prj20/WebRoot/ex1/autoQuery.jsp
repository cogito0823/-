<%@ page language="java" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
  <body>
  	<SCRIPT LANGUAGE="JavaScript">
  		function getinfo(){
  			var account = document.modifyForm.account.value;  			
	  		var xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
	  		var url = "/servlet/AutoQueryServlet?account="+account;
			xmlHttp.open("GET", url, true);			
			xmlHttp.onreadystatechange=function() {
				if (xmlHttp.readyState==4) {
					var xmlDom = xmlHttp.responseXml;
					modifyForm.cname.value =
 xmlDom.getElementsByTagName("cname")[0].text;
				}
			}
			xmlHttp.send();	
  		}
	</SCRIPT>
	�޸��û���Ϣ<BR>
    <form name="modifyForm">
    	���������˺�:<input type="text" name="account" onblur="getinfo()"><BR>
    	������������:<input type="password" name="password"><BR>
    	����ȷ������:<input type="password" name="cpassword"><BR>
    	������������:<input type="text" name="cname"><BR>
    	<input type="button" value="�޸�">
    </form>
  </body>
</html>
