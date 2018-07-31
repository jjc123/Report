package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import entity.Profit;
import jdbcutils.JdbcUtils;

public class ProfitService {
	Connection connection;
	ResultSet resultSet1,resultSet2;
	PreparedStatement preparedStatement1,preparedStatement2;

	public List<Profit> getProfits() throws SQLException {
		Profit profit = null;
		List<Profit> list = new ArrayList<Profit>();
		connection = JdbcUtils.getConnection();
		String sql ="SELECT g.goods_name,g.goods_id,g.cost_price,g.selling_price\r\n" + 
				"FROM goods g\r\n" + 
				"join trade t\r\n" + 
				"on g.goods_id=t.trading_good_id\r\n" + 
				"group by g.goods_name,g.goods_id,g.cost_price,g.selling_price";

		preparedStatement1 = connection.prepareStatement(sql);
		resultSet1 = preparedStatement1.executeQuery();
		while (resultSet1.next()) {
			int temp = 0;
			profit = new Profit();
			profit.setGoods_name(resultSet1.getString("goods_name"));
			profit.setCost_price(resultSet1.getInt("cost_price"));
			profit.setSelling_price(resultSet1.getInt("selling_price"));
			temp = profit.getSelling_price()-profit.getCost_price();
			
			String sqlNumberAndCount = "SELECT SUM(trading_number) number,COUNT(*) count FROM trade WHERE trading_good_id=?";
			preparedStatement2 = connection.prepareStatement(sqlNumberAndCount);
			preparedStatement2.setInt(1, Integer.parseInt(resultSet1.getString("goods_id")));
			resultSet2 = preparedStatement2.executeQuery();
			while(resultSet2.next()) {
				profit.setSelling_count(resultSet2.getInt("Count"));
				profit.setSelling_number(resultSet2.getInt("number"));
			}
			profit.setProfit_amount(temp*profit.getSelling_number());
			list.add(profit);
		}
		return list;
	}
}
