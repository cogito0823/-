<%@ page contentType="text/html; charset=gb2312"%>
<html>
	<body>
		<%
			//��application�ڷŽ�����
			application.setAttribute("applicationMsg", "Welcome Application!");
			//��session�ڷŽ�����
			session.setAttribute("sessionMsg", "Welcome Session!");
		%>
		application�ڵ�����${applicationScope.applicationMsg }<br>
		application�ڵ�����${applicationMsg }<br>
		session�ڵ�����${sessionScope.sessionMsg }<br>
		session�ڵ�����${sessionMsg }<br>
	</body>
</html>
