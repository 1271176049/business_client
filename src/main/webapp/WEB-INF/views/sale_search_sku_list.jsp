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
	<c:forEach items="${vo}" var="vo">
		<div
			style="border: 1px yellow solid; float: left; width: 260px; height: 300px;">
			<img alt="" src="pic/${vo.spu.shp_tp }" width="100px" height="100px"><br>
			<a href="sku_detail.do?sku_id=${vo.id}&spu_id=${vo.shp_id}">${vo.sku_mch}</a><br>
			库存名称:${vo.sku_mch }<br> 销量:${vo.sku_xl }<br> 库存:${vo.kc }<br>
			价格:${vo.jg }<br> 商品名:${vo.spu.shp_mch}<br>
			品牌名称:${vo.pp.ppmch }
		</div>
	</c:forEach>

</body>
</html>