<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- <%@ include file="head.jsp"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/submenu/style.css" media="screen" type="text/css" />
<title>数据恢复-left</title>
<script type="type/javaScript">


</script>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px
}
ul,li{
font-family: 微软雅黑;
}
</style>
</head>
<body class="lbody">
	
		<%@ include file="date.jsp"%>
		<div style="text-align:center;clear:both">
</div>
	<ul id="accordion" class="accordion">
		<li>
			<div class="link" ><i class="fa fa-paint-brush"></i>订 单 管 理<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
			<shiro:hasPermission name="order:findAllOrders">
				<li><a href="${pageContext.request.contextPath}/order/findAllOrders" target="rightFrame">所 有 订 单</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="order:chooseOrderType">
				<li><a href="${pageContext.request.contextPath}/order/chooseOrderType" target="rightFrame">添加订单</a></li>
			</shiro:hasPermission>
				<li><a href="right" target="rightFrame">CSS</a></li>
				<li><a href="right" target="rightFrame">Maquetacion web</a></li>
			</ul>
		</li>
		
		<!-- ↓↓↓↓↓王辉↓↓↓↓↓ -->
		<li>
			<div class="link"><i class="fa fa-code"></i>用 户 管 理<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
			<shiro:hasPermission name="user:TZ02">
				<li><a href="TZ02" target="rightFrame">用户展示</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="user:TZ01">
				<li><a href="TZ01" target="rightFrame">用户添加</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="user:TZ03">
				<li><a href="TZ03" target="rightFrame">修改密码</a></li>
		    </shiro:hasPermission>
			</ul>
		</li>
		<!-- ↑↑↑↑↑王辉↑↑↑↑↑ -->
		<li>
			<div class="link"><i class="fa fa-mobile"></i>设 备 管 理<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
			<shiro:hasPermission name="equipment:list">
				<li>
				<a href="${pageContext.request.contextPath}/equipment/list" target="rightFrame">设备列表展示</a>
				</li>
			</shiro:hasPermission>
			<shiro:hasPermission name="equipment:addPage">
				<li><a href="${pageContext.request.contextPath}/equipment/addPage" target="rightFrame">新增设备</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="equipment:selectOrderID">
				<li><a href="${pageContext.request.contextPath}/equipment/selectOrderID" target="rightFrame">维修介质录入</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="equipment:equipmentRepairList">
				<li><a href="${pageContext.request.contextPath}/equipment/equipmentRepairList" target="rightFrame">维修介质列表展示</a></li>
				</shiro:hasPermission>
			</ul>
		</li>
		<li><div class="link"><i class="fa fa-globe"></i>统 计 信 息<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="${pageContext.request.contextPath}/application/TZ01" target="rightFrame">实时位置显示</a></li>
			</ul>
		</li>
	</ul>
<script src="../js/jquery-1.7.2.min.js"></script>
 <script src="../js/submenu.js"></script>

</body>
</html>