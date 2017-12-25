<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	
</script>
<title>硅谷商城</title>
</head>
<body>
	<table border="1px">
		<tr>
			<th>选中</th>
			<th>图片</th>
			<th>sku名称</th>
			<th>用户id</th>
			<th>数量</th>
		</tr>

		<c:forEach items="${cartlist}" var="cartitem">
			<tr>
				<td><input type="checkbox" ${cartitem.shfxz =="1"?"checked":""}></td>
				<td><img width="60px" alt="" src="pic/${cartitem.shp_tp}">
				</td>
				<td>${cartitem.sku_mch }</td>
				<td>${cartitem.yh_id }</td>
				<td><input style="text-align: center;" type="text" value="${cartitem.tjshl }"></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>