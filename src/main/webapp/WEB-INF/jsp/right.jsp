<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>数据恢复-right</title>
<script
	src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/bootstrap-table.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap-table-locale-all.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-table.min.css" />
<link
	href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css"
	rel="stylesheet" />
<style type="text/css">
.foot {
	margin-top: 150px;
}
.right{
margin-left:200px;
}
.btn {
	width: 150px;
	height: 60px;
	
	margin-top: 30px;
}

.btns {
	width: 530px;
	margin: 0 auto;
}

.name {
	font-family: 黑体;
	font-size: 18px;
	font-weight: bold;
}
</style>
<script type="text/JavaScript">

	function newOrder() {
		
		window.location.href="${pageContext.request.contextPath}/order/chooseOrderType";
	}
	function sbjc() {
		window.location.href = "${pageContext.request.contextPath}/application/sbjc";
	}
</script>
</head>
<body>
	<div class="panel-body" style="padding-bottom:0px;">
		<h3>
			<p class="text-center">欢迎进入SSM后台管理系统</p>
		</h3>
		<div class="btns">
			<button type="button" class="btn btn-warning" onclick="sbjc()">
				<span class="name">硬盘检测</span>
			</button>
			<button type="button" class="btn btn-warning right">
				<span class="name">苹果设备检测</span>
			</button>
			<br />
			<button type="button" class="btn btn-warning">
				<span class="name">安卓设备检测</span>
			</button>
			<button type="button" class="btn btn-warning right">
				<span class="name">其他设备检测</span>
			</button>
			<br />
			<button type="button" class="btn btn-success" onclick="newOrder()">
				<span class="name">创建订单</span>
			</button>
			<!-- <br />
			<button type="button" class="btn btn-warning"><span class="name">本地维修</span></button> -->
		</div>
	</div>

</body>
</html>