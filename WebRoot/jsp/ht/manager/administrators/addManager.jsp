<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../../common/inc/tag.inc"%>
<%@ include file="../../common/inc/script.inc"%>
<%@ include file="../../common/inc/style.inc"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<title>后台管理系统</title>
</head>
<body>
	<%@ include file="../../common/main_top.inc"%>
	<div class="main-container" id="main-container">
		<div class="main-container-inner">
			<%@ include file="../../common/main_left_menu.inc"%>
			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="icon-cog"></i> <a
							href="javascript:void(0)">系统管理</a>
						</li>
						<li class="active"><a
							href="<%=request.getContextPath()%>/ht/manager/administrators/list.do">管理员设置</a></li>
						<li class="active">添加</li>
					</ul>
				</div>
				<div class="page-content">
				      <div class="row">
							<div class="col-xs-12">
								<form id="addform" class="form-horizontal" action="<%=request.getContextPath()%>/ht/manager/administrators/add.do" method="POST">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 姓名: </label>
										<div class="col-sm-9">
											<input type="text" id="uName" name="u_name" placeholder="姓名" class="col-xs-10 col-sm-5" onblur="checkIsExist();">
											<div id="nameerror" class="help-block col-xs-12 col-sm-reset inline"></div>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 密码: </label>
										<div class="col-sm-9">
											<input type="text" id="pwd" name="u_pwd" placeholder="123456" class="col-xs-10 col-sm-5">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 再次输入密码: </label>
										<div class="col-sm-9">
											<input type="text" id="pwd2" placeholder="123456" class="col-xs-10 col-sm-5">
											
										</div>
									</div>
									
								 	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">状态: </label>
										<div class="col-sm-9">
										  <label>
											<input name="u_status" class="ace ace-switch ace-switch-5" type="checkbox" value="0" onclick="checktype();">
											<span class="lbl"></span>
										</label>
										</div>
									</div> 
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"></label>
										<div class="col-sm-9">
											<span id="error"></span>
											
										</div>
									</div>
									
									<div class="col-md-offset-4 col-md-9">
											<button class="btn btn-info"  onclick="return tip();">
												<i class="icon-ok bigger-110"></i>
												提交
											</button>
								    </div>
								</form>
							</div>
						</div>
				 </div>
			</div>
			<%@ include file="../../common/main_right_sz.inc"%>
		</div>
	</div>
	
</body>
<script type="text/javascript">
	function tip() {
		var uname = $("#uName").val();
		var upwd = $("#pwd").val();
		var upwd2 = $("#pwd2").val();
		if(!uname){
		$("#nameerror").html( "姓名不能为空!");
		return false;
		}
		if(!upwd){
		$("#error").html( "密码不能为空!" );
		$("#error").css("color","red"); 
		return false;
		}
		if (upwd==upwd2) {
		   $("#addform").submit();
		} else {
			$("#error").html( "两次输入的密码不一致！" );
			$("#error").css("color","red"); 
			return false;
		}
	}
	
	function checktype(){
	var u_status=$("input[name='u_status']").val();
	  if(u_status==0){
	  $("input[name='u_status']").val("1");
	  }else{
	   $("input[name='u_status']").val("0");
	  }
	}
	
	
	
	function checkIsExist() {  
        var userName =$("#uName").val(); 
        $.ajax({  
            type:"POST",   //http请求方式  
            url:"${pageContext.request.contextPath}/ht/manager/administrators/checkname.do", //发送给服务器的url  
            data:"uname="+userName, //发送给服务器的参数  
            dataType:"json",  //告诉JQUERY返回的数据格式(注意此处数据格式一定要与提交的controller返回的数据格式一致,不然不会调用回调函数complete)  
            success:function(msg) {  
                if (msg) {
                              $("#nameerror").html(""); 
                         } else {  
		                              $("#nameerror").html("   用户名已存在!");  
		                              $("#nameerror").css("color","red"); 
                                }  
                             }
        });  
    }  
    
</script>
</html>

