<%@page import="entity.Profit"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/ProfitServlet"
		method="POST">
		<input type="submit" value="生成报表" />
	</form>
	<table border="1" width="70%" align="center" cellpadding="6"
		cellspacing="2">
		<tr>
			<td>序号</td>
			<td>商品名称</td>
			<td>卖出数量</td>
			<td>交易笔数</td>
			<td>盈利额</td>
		</tr>
		<c:choose>
			<c:when test="${not empty sessionScope.list}">
			  <c:set var="selling_count" value="0" scope="session"></c:set>
			  <c:set var="selling_number" value="0" scope="session"></c:set>
			  <c:set var="profit_amount" value="0" scope="session"></c:set>
				<c:forEach var="profit" items="${sessionScope.list }" varStatus="vs">
				  <c:set var="selling_count" value="${selling_count+profit.selling_count}" scope="session"></c:set>
				  <c:set var="selling_number" value="${selling_number+profit.selling_number}" scope="session"></c:set>
				  <c:set var="profit_amount" value="${profit_amount+profit.profit_amount}" scope="session"></c:set>
					<tr>
						<td>${vs.count}</td>
						<td>${profit.goods_name}</td>
						<td>${profit.selling_count}</td>
						<td>${profit.selling_number}</td>
						<td>${profit.profit_amount}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="2" align="center">总计：</td>
					<td>${sessionScope.selling_count}</td>
					<td>${sessionScope.selling_number}</td>
					<td>${sessionScope.profit_amount}</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan="5">无</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
</body>
</html>