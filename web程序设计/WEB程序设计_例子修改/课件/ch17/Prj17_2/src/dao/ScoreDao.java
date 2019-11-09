package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import vo.Score;

public class ScoreDao {
	private Connection conn = null;

	public void initConnection() throws Exception {
//		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//		conn = DriverManager.getConnection("jdbc:odbc:DSSchool", "", "");
		String url = "jdbc:mysql://localhost:3306/school?"
				+ "user=root&password=root&useUnicode=true&characterEncoding=UTF8&serverTimezone=UTC";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url);
	}

	// ����ĳ�ſγ�����ѧ���ķ���
	public ArrayList getAllScoresByCourseno(String courseno) throws Exception {
		ArrayList al = new ArrayList();
		initConnection();
		String sql = "SELECT STU.STUNO,STU.STUNAME,SCO.TYPE,SCO.SCORE " +
		 "FROM T_STUDENT STU, T_SCORE SCO " + 
		 "WHERE STU.STUNO=SCO.STUNO " + 
		 "AND SCO.COURSENO=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1,courseno);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			Score score = new Score();
			score.setStuno(rs.getString("STUNO"));
			score.setStuname(rs.getString("STUNAME"));
			score.setType(rs.getString("TYPE"));
			score.setScorenumber(rs.getString("SCORE"));
			al.add(score);
		}
		closeConnection();
		return al;		
	}
	// �޸�ĳЩѧ���ķ���
	public void updateScores(String courseno,String[] type,String[] stuno,String[] score ) throws Exception {
		initConnection();
		String sql = "UPDATE T_SCORE SET SCORE=? WHERE STUNO=? AND TYPE=? AND COURSENO=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		for(int i=0;i<stuno.length;i++){
			if(!score[i].equals("")){
				ps.setDouble(1,Double.parseDouble(score[i]));	
				ps.setString(2,stuno[i]);
				ps.setString(3,type[i]);	
				ps.setString(4,courseno);	
				ps.executeUpdate();
			}
		}	
		ps.close();
		conn.close();
		closeConnection();
	}
	public void closeConnection() throws Exception {
		conn.close();
	}
}
