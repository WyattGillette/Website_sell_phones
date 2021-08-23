package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ListProductDAO;
import model.Orders;
import model.Product;
import model.ProductOrders;

/**
 * Servlet implementation class AddToCartController
 */
@WebServlet("/AddToCartController")
public class AddToCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("ProductId");
		ListProductDAO dao = new ListProductDAO();
		if(id != null) {
			Product product = dao.searchProductById(id);
			if(product != null) {
				HttpSession session = request.getSession();
				if(session.getAttribute("orders") == null) {
					Orders orders = new Orders();
					List<ProductOrders> listProduct = new ArrayList<>();
					ProductOrders productOrders = new ProductOrders(product.getId(), product.getName(), product.getPrice(), 1);
					listProduct.add(productOrders);
					orders.setItems(listProduct);
					session.setAttribute("orders", orders);
				}else {
					Orders orders = (Orders) session.getAttribute("orders");
					List<ProductOrders> listProduct = orders.getItems();
					boolean check = false;
					for(ProductOrders a: listProduct) {
						if(a.getProductId() == product.getId()) {
							a.setQuantityProduct(a.getQuantityProduct() + 1);
							check = true;
						}
					}
					if(check == false) {
						ProductOrders productOrders = new ProductOrders(product.getId(), product.getName(), product.getPrice(), 1);
						listProduct.add(productOrders);
					}
					session.setAttribute("orders", orders);
				}
			}
		}
		response.sendRedirect("cart.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
