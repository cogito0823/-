<%@ page language="java" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
  <body>
  	<SCRIPT LANGUAGE="JavaScript">
  		function check(){
  			var account = document.regForm.account.value;  			
	  		var xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
	  		var url = "/servlet/CheckServlet?account="+account;
			xmlHttp.open("GET", url, true);				
			xmlHttp.onreadystatechange=function() {
				if (xmlHttp.readyState==4) {
					checkDiv.innerHTML = xmlHttp.responseText;
				}
				else{
					checkDiv.innerHTML = "���ڼ��...";
				}
			}
			xmlHttp.send();	
  		}
	</SCRIPT>
	��ӭע��������ϵͳ.<BR>
    <form name="regForm">
    	���������˺�:<input type="text" name="account" onblur="check()">
    	<span id="checkDiv"></span><BR>
    	������������:<input type="password" name="password"><BR>
    	����ȷ������:<input type="password" name="cpassword"><BR>
    	������������:<input type="text" name="cname"><BR>
    	<input type="button" value="ע��">
    </form>
  </body>
</html>
