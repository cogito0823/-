<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
<body>
<%//session���
	String account = (String)session.getAttribute("account");
	if(account==null){
		response.sendRedirect("login.jsp");
	}
%>
��ӭ<%=account%>����BBS��
<HR>
<a href="mailList.jsp">�鿴��Ϣ</a>
</body>
</html>