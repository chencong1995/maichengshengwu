<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../../common/inc/tag.inc"%>
<%@ include file="../../common/inc/script.inc"%>
<%@ include file="../../common/inc/style.inc"%>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
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
							<li>
								<i class="icon-edit"></i>
								<a href="javascript:void(0)">关于我们</a>
							</li>
							<li class="active">企业地址</li>
						</ul>
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
							   <!-- 插入内容 -->
							   <form class="form-horizontal" id="updateForm" action="${pageContext.request.contextPath}/ht/company/address/update.do" method="post" enctype="multipart/form-data"> 
							   		<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>电话：</label>
										<div class="col-sm-9">
											<input style="display:none" id="id" name="id" value="${list.id}"></input>
											<input class="col-xs-10 col-sm-6" id="phone" name="phone" type="text" placeholder="${list.imageurl}"></input>
									        <div class="form-group has-error" id="msg1" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*必选项!</div></div>
									    </div>
									</div>
									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>地址：</label>
										<div class="col-sm-9">
											<input class="col-xs-10 col-sm-6" id="address" name="address" type="text" placeholder="${list.title}"></input>
											<div class="form-group has-error" id="msg2" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*必选项!</div></div>
										</div>
									</div>
									<div class="space-4"></div>
									<div class="row">
									     <div class="col-sm-4 col-sm-offset-3 text-center">
									       <div class="btn btn-sm btn-success" onclick="addsubmit();"><i class="icon-ok"></i>提交</div>
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
		function addsubmit(){
		    	    var title=$("#phone").val();
				    var context=$("#address").val();
                    if(title=="" || title==null){
                       $("#msg1").show();
                    }else if(context=="" || context==null){
                       $("#msg2").show();}
                    else{
                      $("#msg1").hide();
                      $("#msg2").hide();
                      alert("修改地址成功!");
					  $("#updateForm").submit();
				}
		                          
		   }
   
   
  
</script>
</html>