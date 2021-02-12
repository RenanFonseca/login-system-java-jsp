package filter;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import core.SingleConnection;

@WebFilter(urlPatterns = {"/*"})
public class Filter implements javax.servlet.Filter {
	
	private static Connection connection;

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		try {
			SingleConnection.getConnection();
			chain.doFilter(request, response);
			connection.commit();
		} catch (Exception e) {
			try {
				connection.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
	}
	
	@Override
	public void init(FilterConfig config) throws ServletException {
		connection = SingleConnection.getConnection();
	}

}
