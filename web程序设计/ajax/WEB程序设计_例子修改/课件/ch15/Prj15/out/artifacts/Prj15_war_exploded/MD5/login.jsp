<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.MD5"%>
��ӭ��¼�ʻ�����ϵͳ
<form action="" method="post">
	���������˺ţ�
	<input name="account" type="text">
	<BR>
	�����������룺
	<input name="password" type="password">
	<input type="submit" value="��¼">
</form>
<%
    request.setCharacterEncoding("gb2312");
	String account = request.getParameter("account");
	if(account!=null){	
		String password = request.getParameter("password");
		//����
		String newPassword = MD5.generateCode(password);
		String sql = "SELECT * FROM T_CUSTOMER WHERE ACCOUNT='" + 
		             account + "' AND PASSWORD='"+ 
		             newPassword + "'";
		out.println("���ݿ����Ϊ��<BR>" + sql);
	}
%>