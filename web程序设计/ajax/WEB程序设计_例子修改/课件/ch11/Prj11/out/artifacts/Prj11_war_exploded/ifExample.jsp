<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<%
			session.setAttribute("score", 5);
		%>
		<c:if test="${ score >=60}">����</c:if>
		<c:if test="${ score <60}">������</c:if>
	</body>
</html>
