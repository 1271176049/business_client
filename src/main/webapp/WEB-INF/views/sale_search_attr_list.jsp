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
	//当用户选择检索的属性条件后，添加到div中，然后要发送请求，查询sku库存中的商品
	function search_attr_up(attr_id, value_id, shuxing) {
		//让search_param中显示出来选中的属性
		var a = "<span id='search_param_"+attr_id+"'>";
		//我们通过一个input控件，然后将值存放在里面，然后调用方法去获取里面的值，这样进行拼接参数
		var b = "<input type='text' name='search_input_param' value='"+attr_id+"_"+value_id+"_"+shuxing+"'>";
		var c = "<a href='javascript:change_paramdiv(" + attr_id + ")'>"
				+ shuxing + "</a>";
		var d = "<span>&nbsp;&nbsp;&nbsp;";
		$("#search_param").append(a + b + c + d);
		$("#search_id_" + attr_id).hide();//这里是隐藏不能删除
		//调用方法，发送异步请求
		search_param_requet();
	}
	//发送异步请求
	function search_param_requet() {
		//var param="class_2_id="+${param.class_2_id};
		var class_2_id=${param.class_2_id};
		list_av=new Array();
		//var param = $(":input [name='search_input_param']");这是获取一个数组对象的，不是一个对象，我们需要遍历
		$(":input[name='search_input_param']").each(function(i,n){
			var vv=$(n).val();
			//var arr=vv.split(",");
			//param=param+"&list_av["+i+"].shxm_id="+arr[0]+"&list_av["+i+"].shxzh_id="+arr[1];
			list_av[i]=vv;
		});
		console.log(list_av);
		//发送ajax请求,list_av，提交的是一个拼接的数组对象
		//$.get("attr_search.do",param,function(data){
		//	alert(data);
		//});
		$.get("attr_search.do",{list_av:list_av,class_2_id:class_2_id},function(data){
			alert(data);
			$("#sku_list").html(data);
		});
	}
	//当用户想要删除属性列表中的属性时调用
	function change_paramdiv(attr_id) {
		//将div中的属性删除
		$("#search_param_" + attr_id).remove();
		//将显示区域的属性放开
		$("#search_id_" + attr_id).show();
	}
</script>
<title>硅谷商城</title>
</head>
<body>
	商品属性列表:
	<div id="search_param"></div>
	<br>
	<br>
	<c:forEach items="${attr}" var="attr">
		<div id="search_id_${attr.id}">
			${attr.shxm_mch }:&nbsp;&nbsp;&nbsp;
			<c:forEach items="${attr.values_list }" var="value">
				<a
					href="javascript:search_attr_up(${attr.id },${value.id},'${value.shxzh }${value.shxzh_mch}')">${value.shxzh}${value.shxzh_mch}
					&nbsp;</a>
			</c:forEach>
			<br>
		</div>
	</c:forEach>

</body>
</html>