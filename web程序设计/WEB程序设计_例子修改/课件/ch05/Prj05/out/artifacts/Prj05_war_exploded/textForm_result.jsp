<%@ page language="java" contentType="text/html; charset=gb2312"%>
<html>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

	<body>


	<%
		request.setCharacterEncoding("gb2312");

		String stuname = request.getParameter("stuname");
		out.println("����Ĳ�ѯ�ؼ���Ϊ:" + stuname);
	%>
	<%= request.getParameter("stuname") %>
	</body>
</html>


