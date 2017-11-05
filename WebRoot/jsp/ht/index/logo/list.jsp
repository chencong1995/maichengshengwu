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
								<i class="icon-home home-icon"></i>
								<a href="javascript:void(0)">首页</a>
							</li>
							<li class="active">LOGO</li>
						</ul>
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
							<div class="alert alert-block alert-success">
									<button type="button" class="close" data-dismiss="alert">
										<i class="icon-remove"></i>
									</button>
									欢迎使用
									<strong class="green">
										科安恒盈-后台管理系统
									</strong>
									。科安，科技让你更安心！
								</div>
							   <!-- 插入内容 -->
							   <div class="row">
									<div class="col-xs-12 col-sm-10 col-sm-offset-1">
										<div class="table-responsive">
											<table class="table table-striped table-bordered table-hover text-center" id="sample-table-1">
												<thead>
													<tr>
														<th class="text-center">编号</th>
														<th class="text-center">标题</th>
														<th class="text-center">图片保存地址</th>
														<th class="text-center">
															<i class="icon-time bigger-110"></i>
															修改时间
														</th>
													</tr>
												</thead>
												<tbody>
												    <c:forEach items="${data.dataList}" var="list" varStatus="num">
													    <tr>
															<td>${num.count}</td>
															<td>${list.imagename}</td>
															<td>${list.imageurl}</td>
															<td>${list.updatetime}</td>
														</tr>
												    </c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							  
							   <div class="row">
										<div class="col-xs-12 col-sm-5 col-sm-offset-1">
											<div class="widget-box">
												<div class="widget-header">
													<h4>网站选项卡LOGO</h4>
													<div class="widget-toolbar">
														<a href="#" data-action="collapse">
															<i class="icon-chevron-up"></i>
														</a>
													</div>
												</div>
												<div class="widget-body">
												<div class="widget-body-inner" style="display: block;">
													<div class="widget-main">
													<form id="faviconForm" action="<%=request.getContextPath()%>/ht/index/logo/addfavicon.do" method="post" enctype="multipart/form-data">
														<div>
															<label for="form-field-8">选项卡内容：</label>
															<input class="form-control limited"  name="favicon_msg" type="text" placeholder="例：深圳科安恒盈科技有限公司" value="${favicon_data.imagemsg }">
														</div>
														<div class="form-group has-error" id="favicon_msg_icon" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*选项卡内容为必填项!</div></div>
														<hr>
														<div class="row">
														  <div class="col-xs-6">当前网站选项卡LOGO:</div>
														  <div class="col-xs-6"><img src="<%=request.getContextPath()%>/${favicon_data.imageurl }" style="height:100px ;width:100px;"></div>
														</div>
														<hr>
														<label for="form-field-8">上传网站选项卡LOGO：<span style="color:red">(图片比例应为16X16)</span></label>
														<div class="ace-file-input ace-file-multiple">
														  <input name="favicon_file" id="id-input-file-3" type="file"/>
														 </div>
														 <div class="text-center">
															<button class="btn btn-sm btn-success" type="button" onclick="faviconSubmit();">
																提交
																<i class="icon-arrow-right icon-on-right bigger-110"></i>
															</button>
														</div>
													</form>
													</div>
												</div>
												</div>
											</div>
										</div><!-- /span -->
										
										<div class="col-xs-12 col-sm-5">
											<div class="widget-box">
												<div class="widget-header">
													<h4>网站LOGO</h4>
													<div class="widget-toolbar">
														<a href="#" data-action="collapse">
															<i class="icon-chevron-up"></i>
														</a>
													</div>
												</div>
												<div class="widget-body">
												<div class="widget-body-inner" style="display: block;">
													<div class="widget-main">
													<form id="logoForm" action="<%=request.getContextPath()%>/ht/index/logo/add.do" method="post" enctype="multipart/form-data">
														<div>
															<label for="form-field-8">点击网站主LOGO导向地址：</label>
															<input class="form-control limited" name="redirectUrl" type="text" placeholder="例：指向首页为index.do" value="${logo_data.imagemsg }">
														</div>
														<div class="form-group has-error" id="logo_redurecturl" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*LOGO导向地址为必填项!</div></div>
														<hr>
														<div class="row">
														  <div class="col-xs-4">当前网站主LOGO:</div>
														  </div>
														  <div class="row">
														  <div class="col-xs-8"><img src="<%=request.getContextPath()%>/${logo_data.imageurl}" 
														  style="height: 250px; width: 450px;"></div>
														</div>
														<hr>
														<label for="form-field-8">上传网站主LOGO：<span style="color:red">(图片比例应为198X60)</span></label>
														 <div class="ace-file-input ace-file-multiple">
														  <input id="id-input-file-4" type="file"  name="logoFile">
														 </div>
														 
														 <div class="text-center">
															<button class="btn btn-sm btn-success" type="button" onclick="logoSubmit();">
																提交
																<i class="icon-arrow-right icon-on-right bigger-110"></i>
															</button>
														</div>
													</form>
													</div>
												</div>
												</div>
											</div>
										</div>
									</div>
									<!-- 插入内容  end-->
							</div>
						</div>
					</div>
				</div>
				<%@ include file="../../common/main_right_sz.inc"%>
			</div>
		</div>
</body>
<script type="text/javascript">
               $('#id-input-file-3').ace_file_input({
					style:'well',
					btn_choose:'点击选择需要上传的图片',
					btn_change:null,
					no_icon:'icon-picture',
					droppable:true,
					thumbnail:'small'
				}).on('change', function(){
					//console.log($(this).data('ace_input_files'));
					//console.log($(this).data('ace_input_method'));
				});
				
				$('#id-input-file-4').ace_file_input({
					style:'well',
					btn_choose:'点击请选择需要上传的图片',
					btn_change:null,
					no_icon:'icon-picture',
					droppable:true,
					thumbnail:'small'
				}).on('change', function(){
					//console.log($(this).data('ace_input_files'));
					//console.log($(this).data('ace_input_method'));
				});
				
				function faviconSubmit(){
				  var msg=$("input[name=favicon_msg]").val();
				  var file=$("input[name=favicon_file]").val();
				 if(msg==""){
				  $("#favicon_msg_icon").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon").hide();
				 }
				 
				 $("#faviconForm").submit();
				}
				
				function logoSubmit(){
				
			     var msg=$("input[name=redirectUrl]").val();
				 var file=$("input[name=logoFile]").val();
				 if(msg==""){
				   $("#logo_redurecturl").show();
				   return ;
				 }else{
				   $("#logo_redurecturl").hide();
				 }
				 
				 $("#logoForm").submit();
				}
</script>
</html>