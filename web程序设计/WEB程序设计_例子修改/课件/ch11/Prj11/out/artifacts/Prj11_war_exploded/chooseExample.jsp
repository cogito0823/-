<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<%
			session.setAttribute("score", 5);
		%>
		<c:choose>
			<c:when test="${ score >=60}">����</c:when>
			<c:when test="${ score <60}">������</c:when>
		</c:choose>
	</body>
</html>