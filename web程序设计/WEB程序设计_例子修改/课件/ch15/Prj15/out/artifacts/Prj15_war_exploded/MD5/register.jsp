<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.MD5"%>
��ӭע���ʻ�����ϵͳ
<form action="" method="post">
	���������˺ţ�	<input name="account" type="text"><BR>
	�����������룺<input name="password" type="password"><BR>
	��������������<input name="cname" type="text"><BR>
	�������֤�ţ�<input name="idno" type="text"><BR>
	<input type="submit" value="ע��">
</form>
<%
    request.setCharacterEncoding("gb2312");
	String account = request.getParameter("account");
	if(account!=null){	
		String password = request.getParameter("password");
		String cname = request.getParameter("cname");
		String idno = request.getParameter("idno");
		//����
		String newPassword = MD5.generateCode(password);
		String sql = "INSERT INTO T_CUSTOMER VALUES('" + 
		             account + "','" + 
		             newPassword + "','" + 
		             cname + "','" + idno + "')";
		out.println("���ݿ����Ϊ��<BR>" + sql);
	}
%>