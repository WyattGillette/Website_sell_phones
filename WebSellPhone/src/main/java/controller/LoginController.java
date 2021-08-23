package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Account;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		request.getSession(true).invalidate();
		
		String user = request.getParameter("username");
		String password = request.getParameter("password");
		
		Account account = new Account();
		account.setUser(user);
		account.setPassword(password);
		
		HttpSession session = request.getSession(true);

		String uid = getServletContext().getInitParameter("username");
		String pwd = getServletContext().getInitParameter("password");
		
		if(user != null && account.getUser().equals(uid) && account.getPassword().equals(pwd)) {
			session.setAttribute("user", account.getUser());
			response.sendRedirect("admin/index.jsp");	
		}else {
			session.setAttribute("error", "Wrong email or password");
			response.sendRedirect("login.jsp");
		}
		
	}

}
