<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
<body>
<%
	//��ȡ�˺�����
	String account = request.getParameter("account");
	String password = request.getParameter("password");
	if(account!=null){
		//��֤�˺�����
		String sql = "SELECT * FROM T_CUSTOMER WHERE ACCOUNT='" 
					+ account 
					+ "' AND PASSWORD='" 
					+ password 
					+ "'";
		out.println("���ݿ�ִ����䣺<BR>" + sql);
	} 
%>
</body>
</html>
