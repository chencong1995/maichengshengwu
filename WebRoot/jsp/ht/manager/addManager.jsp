<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../common/inc/tag.inc"%>
<%@ include file="../common/inc/script.inc"%>
<%@ include file="../common/inc/style.inc"%>
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
	<%@ include file="../common/main_top.inc"%>
	<div class="main-container" id="main-container">
		<div class="main-container-inner">
			<%@ include file="../common/main_left_menu.inc"%>
			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="icon-home home-icon"></i> <a
							href="javascript:void(0)">首页</a>
						</li>
						<li class="active">管理员设置</li>
						<li class="active">添加</li>
					</ul>
				</div>
				<div class="page-content">
				      <div class="row">
							<div class="col-xs-12">
								<form id="addform" class="form-horizontal" action="../ht/manager/add.do" method="POST">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 姓名: </label>
										<div class="col-sm-9">
											<input type="text" id="uName" placeholder="姓名" class="col-xs-10 col-sm-5">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 密码: </label>
										<div class="col-sm-9">
											<input type="text" id="pwd" placeholder="123456" class="col-xs-10 col-sm-5">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 再次输入密码: </label>
										<div class="col-sm-9">
											<input type="text" id="pwd2" placeholder="123456" class="col-xs-10 col-sm-5">
										</div>
									</div>
									
									<div class="col-md-offset-4 col-md-9">
											<button class="btn btn-info" type="button">
												<i class="icon-ok bigger-110"></i>
												新增
											</button>
								    </div>
								</form>
							</div>
						</div>
				 </div>
			</div>
			<%@ include file="../common/main_right_sz.inc"%>
		</div>
	</div>
	
</body>
<script type="text/javascript">
	function tip() {
		var uname = $("#uName").val();
		var upwd = $("#pwd").val();
		var upwd2 = $("#pwd2").val();
		if(!uname){
		  alert("姓名不能为空");
		}
		if(!upwd){
		 alert("密码不能为空");
		}
		if (upwd==upwd2) {
		    alert("成功");
		    return true;
		} else {
			alert("ss");
			$("error").html( "两次输入的密码不一致！" );
			return false;
		}
      document.getElementById("addform").submit();
	};
	 function sumbitTest(){  
        return true; //return false则不会提交   
    }  
</script>
</html>

