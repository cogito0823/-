<%@ page language="java" import="java.sql.*" pageEncoding="gb2312"%>
<html>
	<body>
		<%
			Connection conn = null;
			try{
//				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//				conn = DriverManager.getConnection("jdbc:odbc:DSSchool");
//				Statement stat = conn.createStatement();
				String url = "jdbc:mysql://localhost:3306/school?"
						+ "user=root&password=root&useUnicode=true&characterEncoding=UTF8&serverTimezone=UTC";
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(url);
				Statement stat = (Statement) conn.createStatement();
				conn.setAutoCommit(false);//����Ϊ��Ҫ�Զ��ύ
				String sql1 = "UPDATE1";
				String sql2 = "UPDATE2";
				stat.executeUpdate(sql1);
				stat.executeUpdate(sql2);
				conn.commit();	//�ύ���ϲ���			
			}
			catch(Exception ex){
				conn.rollback();		//����
			}
			finally{
				conn.close();
			}			
    %>
	</body>
</html>
