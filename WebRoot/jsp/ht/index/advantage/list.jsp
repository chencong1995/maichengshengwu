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
							<li class="active">我们的优势</li>
						</ul>
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
							   <!-- 插入内容 -->
							   <div class="row">
									<div class="col-xs-12 col-sm-12">
										<div class="table-responsive">
											<table class="table table-striped table-bordered table-hover text-center" id="sample-table-1">
												<thead>
													<tr>
														<th class="text-center">编号</th>
														<th class="text-center">前台位置</th>
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
															<td>${list.title}</td>
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
							  <div class="col-xs-12 col-sm-4">
											<div class="widget-box">
												<div class="widget-header">
													<h4>我们的优势左图</h4>
													<div class="widget-toolbar">
														<a href="#" data-action="collapse">
															<i class="icon-chevron-up"></i>
														</a>
													</div>
												</div>
												<div class="widget-body">
												<div class="widget-body-inner" style="display: block;">
													<div class="widget-main">
													<form id="advantageForm1" action="<%=request.getContextPath()%>/ht/index/advantage/addleft.do" method="post" enctype="multipart/form-data">
														  <input name="id" type="hidden" value="${advantage_data1.id }">
														<div class="row">
														 <div class="col-xs-12">优势左图：<span class="red">(图片比例应为529X485)</span></div>
														</div>
														<div class="space-4"></div>
														<div class="row" onclick="$('#id-input-file-1').click();">
															  <div class="col-xs-12 text-center">
															   <img id="banaerFile1" class="img-thumbnail"  src="<%=request.getContextPath()%>/${advantage_data1.imageurl }" onerror="this.src='<%=request.getContextPath()%>/img/imgs/home2.jpg'">								   
															  </div>
														</div>
														<div class="form-group has-error" id="favicon_msg_icon" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*图片为必填项!</div></div>
														<input id="id-input-file-1" type="file" style="display:none;" name="advantageFile" />
														<div class="space-4"></div>
														 <div class="text-center">
															<button class="btn btn-sm btn-success" type="button" onclick="advantageSubmit1();">
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
							   
							   <div class="col-xs-12 col-sm-4">
											<div class="widget-box">
												<div class="widget-header">
													<h4>我们的优势右1</h4>
													<div class="widget-toolbar">
														<a href="#" data-action="collapse">
															<i class="icon-chevron-up"></i>
														</a>
													</div>
												</div>
												<div class="widget-body">
												<div class="widget-body-inner" style="display: block;">
													<div class="widget-main">
													<form id="advantageForm2" action="<%=request.getContextPath()%>/ht/index/advantage/add.do" method="post" enctype="multipart/form-data">
														<div>
															<label for="form-field-8">标题：</label>
															<input class="form-control limited" id="title" name="title" type="text"  value="<c:out value="${advantage_data2.title }"></c:out>">
														    <input type="hidden" name="id" value="${advantage_data2.id}">
														</div>
														<div class="form-group has-error" id="favicon_msg_icon1" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*标题为必填项!</div></div>
														<hr>
														<div>
															<label for="form-field-8">内容：</label>
															<textarea class="form-control limited" id="context" name="context" style="margin-top: 0px; margin-bottom: 0px; height: 156px;" >${advantage_data2.context}</textarea>
														</div>
														<div class="form-group has-error" id="favicon_msg_icon2" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*内容为必填项!</div></div>
														<hr>
														 <div class="text-center">
															<button class="btn btn-sm btn-success" type="button" onclick="advantageSubmit2();">
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
							   
							    <div class="col-xs-12 col-sm-4">
											<div class="widget-box">
												<div class="widget-header">
													<h4>我们的优势右2</h4>
													<div class="widget-toolbar">
														<a href="#" data-action="collapse">
															<i class="icon-chevron-up"></i>
														</a>
													</div>
												</div>
												<div class="widget-body">
												<div class="widget-body-inner" style="display: block;">
													<div class="widget-main">
													<form id="advantageForm3" action="<%=request.getContextPath()%>/ht/index/advantage/add.do" method="post" enctype="multipart/form-data">
														<div>
															<label for="form-field-8">标题：</label>
															<input class="form-control limited" id="title2" name="title" type="text" value="<c:out value="${advantage_data3.title }"></c:out>">
														    <input type="hidden" name="id" value="${advantage_data3.id}">
														</div>
														<div class="form-group has-error" id="favicon_msg_icon3" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*标题为必填项!</div></div>
														<hr>
														<div>
															<label for="form-field-8">内容：</label>
															<textarea class="form-control limited" id="context2" name="context"  style="margin-top: 0px; margin-bottom: 0px; height: 156px;">${advantage_data3.context}</textarea>
														</div>
														<div class="form-group has-error" id="favicon_msg_icon4" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*内容为必填项!</div></div>
														<hr>
														 <div class="text-center">
															<button class="btn btn-sm btn-success" type="button" onclick="advantageSubmit3();">
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
							   
							   <div class="row">
							  <div class="col-xs-12 col-sm-4">
											<div class="widget-box">
												<div class="widget-header">
													<h4>我们的优势右3</h4>
													<div class="widget-toolbar">
														<a href="#" data-action="collapse">
															<i class="icon-chevron-up"></i>
														</a>
													</div>
												</div>
												<div class="widget-body">
												<div class="widget-body-inner" style="display: block;">
													<div class="widget-main">
													<form id="advantageForm4" action="<%=request.getContextPath()%>/ht/index/advantage/add.do" method="post" enctype="multipart/form-data">
														<div>
															<label for="form-field-8">标题：</label>
															<input class="form-control limited" id="title3" name="title" type="text" value="<c:out value="${advantage_data4.title }"></c:out>">
														    <input type="hidden" name="id" value="${advantage_data4.id}">
														</div>
														<div class="form-group has-error" id="favicon_msg_icon5" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*标题为必填项!</div></div>
														<hr>
														<div>
															<label for="form-field-8">内容：</label>
															<textarea class="form-control limited" id="context3" name="context" style="margin-top: 0px; margin-bottom: 0px; height: 156px;">${advantage_data4.context}</textarea>
														</div>
														<div class="form-group has-error" id="favicon_msg_icon6" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*内容为必填项!</div></div>
														<hr>
														 <div class="text-center">
															<button class="btn btn-sm btn-success" type="button" onclick="advantageSubmit4();">
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
							   
							   <div class="col-xs-12 col-sm-4">
											<div class="widget-box">
												<div class="widget-header">
													<h4>我们的优势右4</h4>
													<div class="widget-toolbar">
														<a href="#" data-action="collapse">
															<i class="icon-chevron-up"></i>
														</a>
													</div>
												</div>
												<div class="widget-body">
												<div class="widget-body-inner" style="display: block;">
													<div class="widget-main">
													<form id="advantageForm5" action="<%=request.getContextPath()%>/ht/index/advantage/add.do" method="post" enctype="multipart/form-data">
														<div>
															<label for="form-field-8">标题：</label>
															<input class="form-control limited" id="title4" name="title" type="text"  value="<c:out value="${advantage_data5.title }"></c:out>">
														    <input type="hidden" name="id" value="${advantage_data5.id}">
														</div>
														<div class="form-group has-error" id="favicon_msg_icon7" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*标题为必填项!</div></div>
														<hr>
														<div>
															<label for="form-field-8">内容：</label>
															<textarea class="form-control limited" id="context4" name="context" style="margin-top: 0px; margin-bottom: 0px; height: 156px;" >${advantage_data5.context}</textarea>
														</div>
														<div class="form-group has-error" id="favicon_msg_icon8" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*内容为必填项!</div></div>
														<hr>
														 <div class="text-center">
															<button class="btn btn-sm btn-success" type="button" onclick="advantageSubmit5();">
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
							   
							    <div class="col-xs-12 col-sm-4">
											<div class="widget-box">
												<div class="widget-header">
													<h4>我们的优势右5</h4>
													<div class="widget-toolbar">
														<a href="#" data-action="collapse">
															<i class="icon-chevron-up"></i>
														</a>
													</div>
												</div>
												<div class="widget-body">
												<div class="widget-body-inner" style="display: block;">
													<div class="widget-main">
													<form id="advantageForm6" action="<%=request.getContextPath()%>/ht/index/advantage/add.do" method="post" enctype="multipart/form-data">
														<div>
															<label for="form-field-8">标题：</label>
															<input class="form-control limited" id="title5" name="title" type="text"  value="<c:out value="${advantage_data6.title }"></c:out>">
														    <input type="hidden" name="id" value="${advantage_data6.id}">
														</div>
														<div class="form-group has-error" id="favicon_msg_icon9" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*标题为必填项!</div></div>
														<hr>
														<div>
															<label for="form-field-8">内容：</label>
															<textarea class="form-control limited" id="context5" name="context" style="margin-top: 0px; margin-bottom: 0px; height: 156px;" >${advantage_data6.context}</textarea>
														</div>
														<div class="form-group has-error" id="favicon_msg_icon10" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*内容为必填项!</div></div>
														<hr>
														 <div class="text-center">
															<button class="btn btn-sm btn-success" type="button" onclick="advantageSubmit6();">
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
							   
							</div>
						</div>
					</div>
				</div>
				<%@ include file="../../common/main_right_sz.inc"%>
			</div>
		</div>
</body>
<script type="text/javascript">
				
				$(function() {
			     $("#id-input-file-1").change(
			        function() {
			            var $file = $(this);
			            var fileObj = $file[0];
			            var windowURL = window.URL || window.webkitURL;
			            var dataURL;
			            var $img = $("#banaerFile1");
			            if (fileObj && fileObj.files && fileObj.files[0]) {
			                dataURL = windowURL.createObjectURL(fileObj.files[0]);
			                //允许上传的图片格式  
			                var newPreview = document.getElementById("id-input-file-1").value;
			                var regext = /\.jpg$|\.gif$|\.jpeg$|\.png$|\.bmp$/gi;
			                if (!regext.test(newPreview)) {
			                    newPreview=="";
			                    alert("选择的照片格式不正确，请重新选择！");
			                    $(fileObj).after($(fileObj).clone($(fileObj)));
			                    $(fileObj).remove();
			                    return false;
			                }
			                $img.attr("src", dataURL);
			            } else {
			                dataURL = $file.val();
			                var imgObj = document.getElementById("banaerFile1");
			                imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
			                imgObj.filters
			                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
			            }
			        });
			    });
				
				
				
				
				function advantageSubmit1(){
				var file=$("#id-input-file-1").val();
				   if(file==""){
				  $("#favicon_msg_icon").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon").hide();
				 }
				 $("#advantageForm1").submit();
				}
				
				
				
				function advantageSubmit2(){
				  var title=$("#title").val();
				  var context=$("#context").val();
				 if(title==""){
				  $("#favicon_msg_icon1").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon1").hide();
				 }
				 if(context==""){
				  $("#favicon_msg_icon2").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon2").hide();
				 }
				 $("#advantageForm2").submit();
				}
				
				
				
				
				function advantageSubmit3(){
				var title=$("#title2").val();
				  var context=$("#context2").val();
				 if(title==""){
				  $("#favicon_msg_icon3").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon3").hide();
				 }
				 if(context==""){
				  $("#favicon_msg_icon4").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon4").hide();
				 }
				 $("#advantageForm3").submit();
				}
				
				
				function advantageSubmit4(){
				  var title=$("#title3").val();
				  var context=$("#context3").val();
				 if(title==""){
				  $("#favicon_msg_icon5").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon5").hide();
				 }
				 if(context==""){
				  $("#favicon_msg_icon6").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon6").hide();
				 }
				 $("#advantageForm4").submit();
				}
				
				
				
				function advantageSubmit5(){
				   var title=$("#title4").val();
				  var context=$("#context4").val();
				 if(title==""){
				  $("#favicon_msg_icon7").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon7").hide();
				 }
				 if(context==""){
				  $("#favicon_msg_icon8").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon8").hide();
				 }
				 $("#advantageForm5").submit();
				}
				
				
				function advantageSubmit6(){
				    var title=$("#title5").val();
				  var context=$("#context5").val();
				 if(title==""){
				  $("#favicon_msg_icon9").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon9").hide();
				 }
				 if(context==""){
				  $("#favicon_msg_icon10").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon10").hide();
				 }
				 $("#advantageForm6").submit();
				}
</script>
</html>