package servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
public class UploadServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response)  throws ServletException, IOException {
		SmartUpload smartUpload = new SmartUpload();
		//��ʼ��	
		ServletConfig config = this.getServletConfig();
		smartUpload.initialize(config, request, response); 	
		try {
			//�ϴ��ļ�
			smartUpload.upload(); 
			//�õ��ϴ����ļ�����
			File smartFile = smartUpload.getFiles().getFile(0);
			//�����ļ�
			smartFile.saveAs("D:/" + smartFile.getFileName(),
					smartUpload.SAVE_PHYSICAL);// �����ļ�
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		String msg = "Upload Success!";
		request.setAttribute("msg", msg);
		RequestDispatcher rd = request.getRequestDispatcher("/uploadForm.jsp");
		rd.forward(request, response);
	}
}
