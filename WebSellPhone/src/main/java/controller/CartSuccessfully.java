package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ListProductDAO;
import model.Orders;

/**
 * Servlet implementation class CartSuccessfully
 */
@WebServlet("/CartSuccessfully")
public class CartSuccessfully extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Orders orders = (Orders) request.getSession().getAttribute("orders");
		orders.setUsername(request.getParameter("CustomerName"));
		orders.setAddress(request.getParameter("CustomerAddress"));
		orders.setDiscount(request.getParameter("DiscountCode"));
		
		ListProductDAO dao = new ListProductDAO();
		dao.insertOrdersMySQL(orders);
		response.sendRedirect("cartsuccessfully.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
