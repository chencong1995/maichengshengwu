<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="common/inc/tag.inc"%>
<%@ include file="common/inc/script.inc"%>
<%@ include file="common/inc/style.inc"%>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	    <meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<title>后台管理系统</title>
	</head>
	<body class="login-layout">
		<div class="main-container" style="padding-top:12%">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<span class="white">门户后台管理系统</span>
								</h1>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header red lighter bigger" id="error_msg">
												请输入您的管理员帐号
											</h4>
											<div class="space-6"></div>
											<form  id="loginform" action="<%=request.getContextPath()%>/ht/login.do" method="post" >
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="账号" name="u_name" />
															<i class="icon-user"></i>
														</span>
													</label>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="密码" name="u_pwd" />
															<i class="icon-lock"></i>
														</span>
													</label>
													<div class="space"></div>
													<div class="clearfix">
														<button type="button" class="width-35 pull-right btn btn-sm btn-primary" onclick="User_login();">
															<i class="icon-key"></i>
															登录
														</button>
													</div>
													<div class="space-4"></div>
												</fieldset>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>

<script type="text/javascript">
   function User_login(){
     $("#loginform").submit();
    }

   $(function(){
     var error_msg='${error_msg}';
     if(error_msg!=''){
     $("#error_msg").html(error_msg);
        }
     }); 
</script>