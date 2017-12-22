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
	function getMiniCart() {
		$.post("getMiniCart.do", function(data) {
			$("#miniCart_list").html(data);
			$("#miniCart_list").show();
		})
	}
	function hideMiniCart() {
		$("#miniCart_list").hide();
	}
</script>
<title>硅谷商城</title>
</head>
<body>
	<%-- <jsp:include page="miniCart_list.jsp"></jsp:include> --%>
	<a href="#" onmousemove="getMiniCart()" onmouseout="hideMiniCart()">购物车</a>
	<div id="miniCart_list"></div>
</body>
</html>