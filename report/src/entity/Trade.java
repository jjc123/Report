package entity;

public class Trade {
	private Integer trading_id;
	private Integer trading_good_id;
	private Integer trading_user_id;
	private Integer trading_number;

	public Integer getTrading_id() {
		return trading_id;
	}

	public void setTrading_id(Integer trading_id) {
		this.trading_id = trading_id;
	}

	public Integer getTrading_good_id() {
		return trading_good_id;
	}

	public void setTrading_good_id(Integer trading_good_id) {
		this.trading_good_id = trading_good_id;
	}

	public Integer getTrading_user_id() {
		return trading_user_id;
	}

	public void setTrading_user_id(Integer trading_user_id) {
		this.trading_user_id = trading_user_id;
	}

	public Integer getTrading_number() {
		return trading_number;
	}

	public void setTrading_number(Integer trading_number) {
		this.trading_number = trading_number;
	}
}
