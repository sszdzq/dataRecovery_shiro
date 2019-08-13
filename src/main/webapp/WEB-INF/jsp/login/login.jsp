<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 
<title>登录页面</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath}/css/font-awesome.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/pages/signin.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/model/login/login.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}css/bootstrapValidator.css"/>
<style type="text/css">
</style>
</head>
<body >
<div class="account-container">
	
	<div class="content clearfix">
		
		<form id="defaultForm" action="${pageContext.request.contextPath}/login" method="post"> 
		
			<h1>管理员登录</h1>		
			
			<div class="login-fields">
				
				<p>请登录</p>
				
				<div class="field">
					<label for="username">Username</label>
					<input type="text" id="username" name="username"  placeholder="Username" class="login username-field" />
				</div> <!-- /field -->
				
				<div class="field">
					<label for="password">Password:</label>
					<input type="password" id="password" name="password" value="${password}" placeholder="Password" class="login password-field"/>
				</div> <!-- /password -->
			</div> <!-- /login-fields -->
			
			<div class="login-actions">
				
				<span class="login-checkbox">
					<input name="rememberMe" type="checkbox" class="field login-checkbox" tabindex="4" />
					<label class="choice" for="Field">记住密码</label>
				</span>
									
				<button class="button btn btn-success btn-large" >登录</button>
				
			</div> <!-- .actions -->
			
			
			
		</form> 
	</div> <!-- /content -->
	
</div> <!-- /account-container -->



<!-- <div class="login-extra">
	<a href="#">重置密码</a>
</div> --> <!-- /login-extra -->


<script src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}js/bootstrapValidator.min.js"></script>
<script src="${pageContext.request.contextPath}/js/signin.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var name="";
	var psw="";
    //记住密码功能
    var str = getCookie("loginInfo");
    str = str.substring(1,str.length-1);
    var username = str.split(",")[0];
    var password = str.split(",")[1];
    //自动填充用户名和密码
    if("name".equals(username)){    
    	$("#username").val(username);
    }    
    if("psw".equals(password)){    
    	$("#password").val(password); 
    }    
    
});
$(function() {
	validatorInit();
});  
function validatorInit(){
	$('#defaultForm').bootstrapValidator({
		message : 'This value is not valid',
		feedbackIcons : {
			valid : 'glyphicon glyphicon-ok',
			invalid : 'glyphicon glyphicon-remove',
			validating : 'glyphicon glyphicon-refresh'
		},
		fields : {
			username : {
				validators : {
					notEmpty : {
						message : '用户名不能为空'
					}, /* regexp: {
                        regexp: '[0-9]+',
                        message: '只允许输入数字'
                    },   */
					callback : {}
				}
			},
			password : {
				validators : {
					notEmpty : {
						message : '密码不能为空'
					},
					callback : {}
				}
			}
			/* checkCode : {
				validators : {
					notEmpty : {
						message : '验证码不能为空'
					}
				}
			} */
		}
	})
}
//获取cookie
 function getCookie(cname) {
  var name = cname + "=";
  var ca = document.cookie.split(';');
  for(var i=0; i<ca.length; i++) {
      var c = ca[i];
      while (c.charAt(0)==' ') c = c.substring(1);
      if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
  }
  return "";
}

function remember(){
    var remFlag = $("input[type='checkbox']").is(':checked');
   // alert(remFlag);
    if(remFlag==true){ //如果选中设置remFlag为1
        //cookie存用户名和密码,回显的是真实的用户名和密码,存在安全问题.
        var conFlag = confirm("记录密码功能不宜在公共场所(如网吧等)使用,以防密码泄露.您确定要使用此功能吗?");
        if(conFlag){ //确认标志
            $("#remFlag").val("1");
        }else{
            $("input[type='checkbox']").removeAttr('checked');
            $("#remFlag").val("");
        }
    }else{ //如果没选中设置remFlag为""
        $("#remFlag").val("");
    }
}
/*$(document).ready(function() {
    changeCode();
    $("#codeImg").bind("click", changeCode);
     //记住密码功能
    var str = response.getCookies("loginInfo");
    str = str.substring(1,str.length-1);
    var username = str.split(",")[0];
    var password = str.split(",")[1];
    //自动填充用户名和密码
  $("#userName").val(username);
    $("#password").val(password);
    $("#username").blur(function(){
        var usrName=$("#username").val();
        if(username==usrName){
            $("#password").val(password);
        }else{
            $("#password").val('');
        }
    });
});
 */
</script>
</body>
</html>