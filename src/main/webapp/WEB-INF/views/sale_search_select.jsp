<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	$(function (){
		$.getJSON("js/json/class_1.js",function(data){
			// 用js循环json的分类集合
			$(data).each(function(i,json){
				// 将分类集合的内容生成<option>对象加载到下拉列表中
				$("#class_1_select_select").append("<li onmouseover='get_class_2_select(this.value)' value="+json.id+">"+json.flmch1+"</li>");
			});
		});
	});
	
	function get_class_2_select(class_1_id){
		// $("#class_1_select option:selected").val();
		// $("#class_1_select").val();
		$.getJSON("js/json/class_2_"+class_1_id+".js",function(data){
			// 用js循环json的分类集合
			$("#class_2_select_select").empty();
			$(data).each(function(i,json){
				// 将分类集合的内容生成<option>对象加载到下拉列表中
				$("#class_2_select_select").append("<li value="+json.id+"><a href='goto_class_search.do?class_2_id="+json.id+"&class_2_name="+json.flmch2+"' target='_blank'>"+json.flmch2+"</a></li>");
			});
		});

	}

</script>
<title>硅谷商城</title>
</head>
<body>

	<ul style="float:left;margin-left:10px;" name="flbh1" id="class_1_select_select" >
	</ul>
	<ul style="float:left;" name="flbh2" id="class_2_select_select" >
	</ul>
</body>
</html>