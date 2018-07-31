package jdbcutils;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.jupiter.api.Test;

class dd {
	Connection connection;
	ResultSet resultSet1,resultSet2;
	PreparedStatement preparedStatement1,preparedStatement2;
	@Test
	void test() throws ClassNotFoundException, SQLException {
		connection = JdbcUtils.getConnection();
		String sql = "SELECT g.goods_name,g.goods_id,g.cost_price,g.selling_price\r\n" + 
				"FROM goods g\r\n" + 
				"join trade t\r\n" + 
				"on g.goods_id=t.trading_good_id\r\n" + 
				"group by g.goods_name,g.goods_id,g.cost_price,g.selling_price";

		preparedStatement1 = connection.prepareStatement(sql);
		resultSet1 = preparedStatement1.executeQuery();
	}

}
