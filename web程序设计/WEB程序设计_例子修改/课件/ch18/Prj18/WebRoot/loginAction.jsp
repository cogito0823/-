<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="dao.CustomerDao"%>
<%@page import="vo.Customer"%>
<html> 
  <body>
    <%
    	request.setCharacterEncoding("gb2312");
    	String account = request.getParameter("account");
    	String password = request.getParameter("password");
    	
    	CustomerDao cdao = new CustomerDao();
    	Customer customer = cdao.getCustomerByAccount(account);
		if(customer==null || !customer.getPassword().equals(password)){
	%>
			��¼ʧ��,<a href="loginForm.jsp">���ص�¼ҳ��</a>
	<%			
		}
		else{
			session.setAttribute("customer",customer);
			ArrayList customers = (ArrayList)application.getAttribute("customers");
			ArrayList msgs = (ArrayList)application.getAttribute("msgs");
			customers.add(customer);
			msgs.add(customer.getCname() + "������!");    		
    		response.sendRedirect("chatForm.jsp");
		}       	
    %> 
  </body>
</html>
