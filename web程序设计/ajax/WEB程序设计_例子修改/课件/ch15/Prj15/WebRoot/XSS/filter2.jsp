<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
<body>
��ӭ��ѯ�ʻ�
<form name="queryForm" action="filter2.jsp" method="post">
	���������ʻ�����Ϣ��<BR>
	<input name="flower" type="text" size="50">
	<input type="submit" value="��ѯ">	
</form>
<HR>
�ύ���ʻ���
<%
	String flower = request.getParameter("flower");
	if(flower!=null){
	    flower = flower.replaceAll("<|>","");
		out.println(flower);
	}
 %>
 </body>
</html>


