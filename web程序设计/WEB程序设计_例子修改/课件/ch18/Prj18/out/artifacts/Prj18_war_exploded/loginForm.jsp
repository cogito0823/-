<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html> 
  <body>
  	<%
  		/*��ʼ��application*/
    	ArrayList customers = (ArrayList)application.getAttribute("customers");    	    	if(customers==null)	{
    		customers = new ArrayList();
    		application.setAttribute("customers",customers);
    	}
    	
    	ArrayList msgs = (ArrayList)application.getAttribute("msgs");
    	if(msgs==null)	{
    			msgs = new ArrayList();
    			application.setAttribute("msgs",msgs);
    	}
  	%>
  	��ﻶӭ��¼���߽���ϵͳ���
    <form action="loginAction.jsp" name="form1" method="post">
    	�����˺ţ�<input name="account" type="text"><BR>
    	�������룺<input name="password" type="password">   	
    	<input type="submit" value="��¼" >
    </form>   
  </body>
</html>
