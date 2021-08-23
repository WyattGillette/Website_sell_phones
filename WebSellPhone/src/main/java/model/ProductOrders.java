package model;

public class ProductOrders {
	private int productId;
	private String nameProduct;
	private float priceProduct;
	private int quantityProduct;
	
	public ProductOrders() {
		
	}
	
	public ProductOrders(int productId, String nameProduct, float priceProduct, int quantityProduct) {
		this.productId = productId;
		this.nameProduct = nameProduct;
		this.priceProduct = priceProduct;
		this.quantityProduct = quantityProduct;
		
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getNameProduct() {
		return nameProduct;
	}

	public void setNameProduct(String nameProduct) {
		this.nameProduct = nameProduct;
	}

	public float getPriceProduct() {
		return priceProduct;
	}

	public void setPriceProduct(float priceProduct) {
		this.priceProduct = priceProduct;
	}

	public int getQuantityProduct() {
		return quantityProduct;
	}

	public void setQuantityProduct(int quantityProduct) {
		this.quantityProduct = quantityProduct;
	}
	
	public float getTotalPriceProduct() {
		return this.priceProduct*this.quantityProduct;
	}
}
