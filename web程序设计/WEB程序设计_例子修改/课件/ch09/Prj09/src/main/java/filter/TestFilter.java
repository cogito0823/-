package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class TestFilter implements Filter {
	public TestFilter(){
		System.out.println("���������캯��");
	}
	public void init(FilterConfig config) throws ServletException {
		System.out.println("��������ʼ������");
	}
	public void destroy() {
		System.out.println("��������������");
	}
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		System.out.println("������doFilter����");
		chain.doFilter(request, response);
	}
}
