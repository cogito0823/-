package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ValidateServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//�õ��ύ����֤��
		String code = request.getParameter("code");
		//��ȡsession�е���֤��
		HttpSession session = request.getSession();
		String randStr = (String)session.getAttribute("randStr");
		response.setCharacterEncoding("gb2312");
		PrintWriter out = response.getWriter();
		if(!code.equals(randStr)){
			out.println("��֤�����");
		}
		else{
			out.println("��֤����ȷ!��ת��LoginServlet......");
		}		
	}
}
