<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <body onload="initAJAX()">
  	<SCRIPT LANGUAGE="JavaScript">
  		function login(){
  			var account = document.loginForm.account.value;
  			var password = document.loginForm.password.value;  			
	  		// var xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
	  		var url = "servlet/LoginServlet?account="+account+"&password="+password;
			xmlHttp.open("POST", url, true);				
			xmlHttp.onreadystatechange=function() {
				if (xmlHttp.readyState==4) {
					resultDiv.innerHTML = xmlHttp.responseText;
				}
				else{
					resultDiv.innerHTML += "���ڵ�¼�����Ժ�......";
				}				
			}
			xmlHttp.send();	
  		}
	</SCRIPT>  	
    ��ӭ��¼ѧ������ϵͳ. <hr>
    <div>
    <form name="loginForm">
    	���������˺�:<input type="text" name="account"><BR>
    	������������:<input type="password" name="password"><BR>
    	<input type="button" value="��¼" onclick="login()">
    </form>
    </div>
    <div id = "resultDiv"></div>
  <script src="commons.js"></script>
  </body>
</html>
