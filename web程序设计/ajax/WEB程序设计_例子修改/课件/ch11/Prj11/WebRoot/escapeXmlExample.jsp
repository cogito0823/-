<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<%
			session.setAttribute("msg", "<B>����<c:out>ʾ��</B>");
		%>
		<c:out value="${msg}"></c:out><br>
		<c:out value="${msg}" escapeXml="false"></c:out>
	</body>
</html>