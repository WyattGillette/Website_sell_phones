package model;

import java.util.List;

public class Orders {
	private List<ProductOrders> items;
	private String address;
	private String username;
	private String discount;
	
	public Orders() {
		
	}
	
	public Orders(List<ProductOrders> items, String address, String username, String discount) {
		this.items = items;
		this.address = address;
		this.username = username;
		this.discount = discount;
	}
	
	public List<ProductOrders> getItems() {
		return items;
	}
	public void setItems(List<ProductOrders> items) {
		this.items = items;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public float getTotalOrder() {
		float result = 0;
		for(ProductOrders a: this.items) {
			result += a.getTotalPriceProduct();
		}
		return Math.round(result * 100) / 100;
	}
	public int getAmountOfProducts() {
		return this.items.size();
	}
}
