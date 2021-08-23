package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import model.Orders;
import model.Product;
import model.ProductOrders;

public class ListProductDAO {
	
	public Connection JDBCConnection() {
		final String db_url = "jdbc:mysql://localhost/shoppingdb";
		final String user = "";
		final String password = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(db_url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Product> searchProductByName(String search){
		List<Product> listOfProduct = new LinkedList<>();

		try {
			Connection connection = JDBCConnection();
			Statement statement = connection.createStatement();
			String sqlQuery = "SELECT * FROM PRODUCTS";
			ResultSet resultSet = statement.executeQuery(sqlQuery);
			
			while(resultSet.next()) {
				int product_id = resultSet.getInt("product_id");
				String product_name = resultSet.getString("product_name");
				String product_des = resultSet.getString("product_des");
				float product_price = resultSet.getFloat("product_price");
				String product_img_source = resultSet.getString("product_img_source");
				String product_type = resultSet.getString("product_type");
				String product_brand = resultSet.getString("product_brand");
				if(product_name.contains(search)){
					Product product = new Product(product_id, product_name, product_des, product_price, product_img_source, product_type, product_brand);
					listOfProduct.add(product);	
				}
				
			}
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listOfProduct;
	}
	
	public Product searchProductById(String id){

		try {
			Connection connection = JDBCConnection();
			Statement statement = connection.createStatement();
			String sqlQuery = "SELECT * FROM PRODUCTS WHERE PRODUCT_ID = " + id;
			ResultSet resultSet = statement.executeQuery(sqlQuery);
			
			resultSet.next();
			int product_id = resultSet.getInt("product_id");
			String product_name = resultSet.getString("product_name");
			String product_des = resultSet.getString("product_des");
			float product_price = resultSet.getFloat("product_price");
			String product_img_source = resultSet.getString("product_img_source");
			String product_type = resultSet.getString("product_type");
			String product_brand = resultSet.getString("product_brand");
			connection.close();
			return new Product(product_id, product_name, product_des, product_price, product_img_source, product_type, product_brand);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public void insertOrdersMySQL(Orders orders) {
		Connection connection = JDBCConnection();
		try {
			String sqlQueryInsert = "INSERT INTO ORDERS(ORDER_USER, ORDER_ADDRESS, ORDER_DISCOUNT) VALUE (?, ?, ?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sqlQueryInsert);
			preparedStatement.setString(1, orders.getUsername());
			preparedStatement.setString(2, orders.getAddress());
			preparedStatement.setString(3, orders.getDiscount());
			preparedStatement.executeUpdate();
			
			String sqlQueryId = "SELECT MAX(ORDER_ID) AS ORDER_ID FROM ORDERS";
			ResultSet resultSet = connection.createStatement().executeQuery(sqlQueryId);
			resultSet.next();
			int ordersId = resultSet.getInt("ORDER_ID");
			
			List<ProductOrders> listProducts = orders.getItems();
			for(ProductOrders a: listProducts) {
				insertProductOrdersMySQL(connection, a, ordersId);
			}
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	private void insertProductOrdersMySQL(Connection connection, ProductOrders productOrders, int ordersId) {
		try {
			String sqlQueryInsert = "INSERT INTO ORDERS_DETAIL(ORDER_ID, PRODUCT_ID, PRODUCT_AMOUNT, PRODUCT_PRICE) VALUE (?, ?, ?, ?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sqlQueryInsert);
			preparedStatement.setInt(1, ordersId);
			preparedStatement.setInt(2, productOrders.getProductId());
			preparedStatement.setFloat(3, productOrders.getPriceProduct());
			preparedStatement.setInt(4, productOrders.getQuantityProduct());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
