package entity;

public class Profit {
	private Integer profit_id;
	private String goods_name;
	private Integer selling_number;   //卖出笔数
	private Integer selling_count;    //卖出总数
	private Integer profit_amount;    //卖出总金额
	private Integer cost_price;
	private Integer selling_price;
	public Integer getProfit_id() {
		return profit_id;
	}
	public void setProfit_id(Integer profit_id) {
		this.profit_id = profit_id;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public Integer getSelling_number() {
		return selling_number;
	}
	public void setSelling_number(Integer selling_number) {
		this.selling_number = selling_number;
	}
	public Integer getSelling_count() {
		return selling_count;
	}
	public void setSelling_count(Integer selling_count) {
		this.selling_count = selling_count;
	}
	public Integer getProfit_amount() {
		return profit_amount;
	}
	public void setProfit_amount(Integer profit_amount) {
		this.profit_amount = profit_amount;
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


}
