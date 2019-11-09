package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import beans.Student;
public class StudentDao {
	public ArrayList queryAllStudents() throws Exception {
		Connection conn = null;
		ArrayList students= new ArrayList();
		try {
			//��ȡ����
//			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//			String url="jdbc:odbc:DsSchool";
//			conn = DriverManager.getConnection(url, "", "");

			String url = "jdbc:mysql://localhost:3306/school?"
					+ "user=root&password=root&useUnicode=true&characterEncoding=UTF8&serverTimezone=UTC";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url);
//			Statement stat = (Statement) conn.createStatement();
			// ����SQL���
			String sql = "SELECT STUNO,STUNAME from T_STUDENT";
			Statement stat = conn.createStatement();
			ResultSet rs = stat.executeQuery(sql);
			while (rs.next()) {
                //ʵ����VO
				Student student = new Student();
				student.setStuno(rs.getString("STUNO"));
				student.setStuname(rs.getString("STUNAME"));
				students.add(student);
			}
			rs.close();
			stat.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {// �ر�����
				if (conn != null) {
					conn.close();
					conn = null;
				}
			} catch (Exception ex) {
			}
		}
		return students;
	}
}
