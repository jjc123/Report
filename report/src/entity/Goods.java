package entity;

public class Goods {
	private String goods_id;
	private String goods_name;
	private Integer cost_price;
	private Integer selling_price;
	private String manufacturer;

	public String getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public Integer getCost_price() {
		return cost_price;
	}

	public void setCost_price(Integer cost_price) {
		this.cost_price = cost_price;
	}

	public Integer getSelling_price() {
		return selling_price;
	}

	public void setSelling_price(Integer selling_price) {
		this.selling_price = selling_price;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
}
