<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
<body>
<%
	//��ȡ�ʻ�
	String flower = request.getParameter("flower");
	String sql = "SELECT * FROM T_FLOWER WHERE FLOWERNAE LIKE '%" 
		        + flower 
		        + "%'";
		out.println("���ݿ�ִ����䣺<BR>" + sql);
%>
</body>
</html>
