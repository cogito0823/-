<%@ page language="java" contentType="text/html;charset=gb2312" import="beans.Student"%>
<html>
	<body>
		<%
		Student student = new Student();
		student.setStuno("0001");
		student.setStuname("����");
		session.setAttribute("student", student);
		%>
		ѧ�ţ�${sessionScope.student.stuno }<br>
		������${sessionScope.student.stuname }<br>
	</body>
</html>
