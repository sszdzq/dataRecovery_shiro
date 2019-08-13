<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ include file="../head.jsp"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-table.min.css">

<title>显示所有的订单</title>
<style type="text/css">
.table-area {
	width: 85%;
	margin: 50px auto;
}
</style>
</head>
<body>

	<div class="table-area">
		<table id="table"></table>
		</table>
	</div>



	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap-table.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap-table-zh-CN.min.js"></script>
	<script type="text/javascript">
	
	window.operateEvents = {
			'click .RoleOfdelete' : function(event, value, row, index) {
				alert("删除");
			/* alert(row.dno); */
			},
			'click .RoleOfedit' : function(event, value, row, index) {
				/* $("#editModal").modal('show'); */
				alert("编辑");
			}
		};
		$('#table').bootstrapTable({
			columns : [ {
				checkbox : true,
			}, {
				field : 'number',
				title : '序号'
			}, {
				field : 'orderid',
				title : '订单编号'
			}, {
				field : 'ordertype',
				title : '订单类型'
			}, {
				field : 'orderstatus',
				title : '订单状态'
			}, {
				field : 'operate',
				title : 'Item Operate',
				align : 'center',
				events : operateEvents,
				formatter : operateFormatter
			},
	
			],
			pagination : true,
			data : [ {
				number : 1,
				orderid : 'Item 1',
				ordertype : '$1'
			}, {
				number : 2,
				orderid : 'Item 2',
				ordertype : '$2'
			} ]
		});
	
	
	
		function operateFormatter(value, row, index) {
			return [
				'<button type="button"  class="RoleOfdelete btn btn-primary  btn-sm" style="margin-right:15px;">删除</button>',
	
				'<button type="button" class="RoleOfedit btn btn-primary  btn-sm" style="margin-right:15px;">修改</button>'
			].join("");
	
		}
	
		
	</script>
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
</head>
<body>
<h2>登录失败，请重新登录</h2>
</body>
</html> --%>
