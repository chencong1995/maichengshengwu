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
						<li class="active">编辑</li>
					</ul>
				</div>
				<div class="page-content">
				      <div class="row">
							<div class="col-xs-12">
								<form id="updateform" class="form-horizontal" action="<%=request.getContextPath()%>/ht/manager/administrators/update.do" method="POST">
									<input type="hidden" id="uid" name="u_id"  value="${user.u_id}"  >
									<div class="form-group">
										<label for="inputError" class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">用户名:</label>
                                          <div class="col-xs-12 col-sm-5">
										   <span class="block input-icon input-icon-right">
												<input type="text" name="u_name" value="${user.u_name}" class="width-100" readonly="true">
										   </span>
										  </div>
                                          
									</div>
									<div class="form-group">
										<label for="inputError" class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">旧密码:</label>
                                          <div class="col-xs-12 col-sm-5">
										   <span class="block input-icon input-icon-right">
												<input type="text" name="old_pwd" id="old_pwd" class="width-100">
										   </span>
										  </div>
                                          <div class="help-block col-xs-12 col-sm-reset" id="old_pwd_msg" style="display:none;color:red"></div>
									</div>
									<div class="form-group">
										<label for="inputError" class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">新密码:</label>
                                          <div class="col-xs-12 col-sm-5">
										   <span class="block input-icon input-icon-right">
												<input type="text" name="new_pwd" id="new_pwd"  class="width-100">
										   </span>
										  </div>
                                          <div class="help-block col-xs-12 col-sm-reset" id="new_pwd_msg" style="display:none;color:red"></div>
									</div>
									<div class="form-group">
										<label for="inputError" class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">请再次输入新密码：</label>
                                          <div class="col-xs-12 col-sm-5">
										   <span class="block input-icon input-icon-right">
												<input type="text" name="refer_pwd" id="refer_pwd"  class="width-100">
										   </span>
										  </div>
                                          <div class="help-block col-xs-12 col-sm-reset" id="refer_pwd_msg" style="display:none;color:red"></div>
									</div>
									
									
									<!--<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">状态: </label>
										<div class="col-sm-9">
										  <label>
											<input id="status" name="u_status" class="ace ace-switch ace-switch-5" type="checkbox" value="${user.u_status}" onclick="checktype();" 
											    <c:if test="${user.u_status ==1}">checked</c:if>
											>
											<span class="lbl"></span>
										</label>
										</div>
									</div> 
								 	
									--><div class="col-md-offset-4 col-md-9">
											<div class="btn btn-info"  onclick="editManager();">
												<i class="icon-ok bigger-110"></i>
												更新
											</div>
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
	
	function editManager(){
	  var new_pwd=$("#new_pwd").val();
	  var old_pwd=$("#old_pwd").val();
	  var refer_pwd=$("#refer_pwd").val();
	  
	  if(old_pwd==""){
	   $("#old_pwd_msg").html("*密码不能为空");
	   $("#old_pwd_msg").show();
	   return ;
	  }else{
	    $("#old_pwd_msg").hide();
	  }
	  if(new_pwd==""){
	   $("#new_pwd_msg").html("*密码不能为空");
	   $("#new_pwd_msg").show();
	   return ;
	  }else{
	   $("#new_pwd_msg").hide();
	  }
	  if(refer_pwd==""){
	   $("#refer_pwd_msg").html("*密码不能为空");
	   $("#refer_pwd_msg").show();
	   return ;
	  }else{
	   $("#refer_pwd_msg").hide();
	  }
	  if(new_pwd!=refer_pwd){
	   $("#refer_pwd_msg").html("*密码不正确");
	   $("#refer_pwd_msg").show();
	   return ;
	  }else{
	   $("#refer_pwd_msg").hide();
	  }
	  $("#updateform").submit();
	  
	}  
    
</script>
</html>

