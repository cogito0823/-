<%@ page language="java" contentType="text/html; charset=gb2312" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<%
		ArrayList al= new ArrayList();
		al.add("�Ż�");
		al.add("����");
		al.add("������");
		session.setAttribute("students",al);
		%>
		<c:forEach items="${students}" var="student">
		${student}
		</c:forEach>		
	</body>
</html>
