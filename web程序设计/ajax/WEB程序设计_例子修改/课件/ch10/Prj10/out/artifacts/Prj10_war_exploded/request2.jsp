<%@ page language="java" contentType="text/html; charset=gb2312"%>
<jsp:useBean id="student" class="beans.Student" scope="request">
</jsp:useBean>
<html>
	<body>
		ѧ��������<jsp:getProperty name="student" property="stuname" />
	</body>
</html>
