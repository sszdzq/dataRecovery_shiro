<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="../css/bootstrap.min.css"/>
<title>top头</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table-locale-all.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-table.min.css">
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
* {margin: 0px;padding: 0px;background-color:#5681B7;}
.company-name{color: white;margin-top:6px;margin-left:3px;}
.logo{height: 90px;width: 100%-200px;padding-left:200px;padding-top:20px;float: left;}
h1{line-height: 110px ;color:white;padding-left:20px;float:left;margin-top: 0px;
    margin-bottom: 0px;}
    .logo img{
        margin-left: 13px;
    }
.info{float:right;margin-top: 85px;margin-right: 10px;}
.username{color: white;margin-right: 10px;font-size: 17px;}
.userinfo{color: white;margin-right: 10px;font-size: 17px;}
.logout{color: white;font-size: 17px;}
</style>
</head>
<body>
	<div class="logo">
		<img src="../img/message_avatar2.png"/>
		<h4 class="company-name">SSMDEMO</h4>
	</div>
	<h1>SSM+shiro+bootstrap后台网站DEMO</h1>
	<div class="info">
		<span class="username"><span class="glyphicon glyphicon-user"></span><span>&nbsp;欢迎当前用户&nbsp;</span> ${sessionScope.activeUser.loginname}</span>
		<a id="loginOut" href="javascript:void(0)"><span class="logout" onclick="logout()">退出</span></a>
	</div>
	<script type="text/javascript">
	function logout() {
		if(confirm("您确定要退出本系统吗?")){
			  window.top.location.href = '${pageContext.request.contextPath}/logout';
			  }
			  else{
		     return false;
			  }
			 }
		
	</script>
</body>
</html>