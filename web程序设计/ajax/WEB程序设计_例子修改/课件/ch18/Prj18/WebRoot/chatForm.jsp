<%@ page language="java" pageEncoding="gb2312"%>
<%@page import="vo.Customer"%>
<html> 
  <body>
  	<%
  		Customer customer = (Customer)session.getAttribute("customer");
  	%>
    ��ӭ<%=customer.getCname() %>����<BR>
    <form action="chatAction.jsp" name="form1" method="post">
    	����������Ϣ��<input name="msg" type="text" size="40">
    	<input type="submit" value="����" >
    </form>  
    <a href="logoutAction.jsp">�˳���¼</a>
    <HR>
    <iframe src="msgs.jsp" width="100%" height="80%" frameborder="0"></iframe>   
  </body>
</html>
