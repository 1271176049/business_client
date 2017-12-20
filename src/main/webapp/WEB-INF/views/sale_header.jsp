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
	$(function() {
		var key = "age";
		var v = getcookie(key);
		$("#c").html(v);
	});
	function getcookie(key) {
		var result = "";
		var mycookie = document.cookie;/*decodeURIComponent(URIstring)*/
		mycookie = mycookie.replace(" ", "");
		mycookie = mycookie.split(";");
		for (var i = 0; i < mycookie.length; i++) {
			var mcookie = mycookie[i].split("=");
			if (mcookie[0] == key) {
				result = decodeURIComponent(mcookie[1]);
			}
		}
		return result;
	}
</script>
<title>硅谷商城</title>
</head>
<body>${empty sessionScope.user}请求域${empty requestScope.user}
	<center>
		测试
		<div id="c"></div>
		<c:if test="${empty user}">
			${cookie.userName.value}			<a href="goto_login.do">请登陆</a>

			<a href="#">注册</a>
		</c:if>
		<c:if test="${!empty user}">
		欢迎${cookie.userName.value}光临!&nbsp;&nbsp;&nbsp;&nbsp;	<a
				href="login_out.do">注销</a>
		</c:if>
	</center>
</body>
</html>