<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%--<meta http-equiv="refresh" content="5;url=http://www.baidu.com" /> --%>
<title>错误信息</title>
</head>
<body>
	<p style="font-size:18px;color:#ED692C; margin-left: 20px">
		${message}</p>
	<script>
		var t = 3; //设定跳转的时间 
		setInterval("refer()", 1000); //启动1秒定时 
		function refer() {
			if (t == 0) {
				window.top.location.href = "${pageContext.request.contextPath}/login"; //#设定跳转的链接地址 
			}
			document.getElementById('show').innerHTML = "" + t + "秒后跳转到登录页面"; // 显示倒计时 
			t--; // 计数器递减 
		//本文转自： 
		}
	</script>
	<span id="show"></span>
</body>
</html>