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
							<li class="active">轮播图管理</li>
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
							      <div class="col-xs-12 col-sm-4">
											<div class="widget-box">
												<div class="widget-header">
													<h4>网站轮播图1</h4>
													<div class="widget-toolbar">
														<a href="#" data-action="collapse">
															<i class="icon-chevron-up"></i>
														</a>
													</div>
												</div>
												<div class="widget-body">
												<div class="widget-body-inner" style="display: block;">
													<div class="widget-main">
													<form id="pic1Form" action="<%=request.getContextPath()%>/ht/index/banner/add.do" method="post" enctype="multipart/form-data">
														<input name="id" type="hidden" value="${banner_data.id }">
														<div class="row">
														 <div class="col-xs-12">轮播图1：<span class="red">(图片比例应为1000X610)</span></div>
														</div>
														<div class="space-4"></div>
														<div class="row" onclick="$('#id-input-file-1').click();">
															  <div class="col-xs-12">
															   <img id="banaerFile1" class="img-thumbnail"  src="<%=request.getContextPath()%>/${banner_data.imageurl }" onerror="this.src='<%=request.getContextPath()%>/img/imgs/tab3_4.jpg'">								   
															  </div>
														</div>
														<div class="form-group has-error" id="favicon_msg_icon" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*图片为必填项!</div></div>
														<input id="id-input-file-1" type="file" style="display:none;" name="banaerFile" />
														<div class="space-4"></div>
														<div class="text-center">
															<button class="btn btn-sm btn-success" type="button" onclick="bannerSubmit1();">
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
													<h4>网站轮播图2</h4>
													<div class="widget-toolbar">
														<a href="#" data-action="collapse">
															<i class="icon-chevron-up"></i>
														</a>
													</div>
												</div>
												<div class="widget-body">
												<div class="widget-body-inner" style="display: block;">
													<div class="widget-main">
													<form id="pic2Form" action="<%=request.getContextPath()%>/ht/index/banner/add.do" method="post" enctype="multipart/form-data">
														<input name="id" type="hidden" value="${banner_data2.id }">
														<div class="row">
														 <div class="col-xs-12">轮播图2：<span class="red">(图片比例应为1000X610)</span></div>
														</div>
														<div class="space-4"></div>
														<div class="row" onclick="$('#id-input-file-2').click();">
															  <div class="col-xs-12">
															   <img id="banaerFile2" class="img-thumbnail"  src="<%=request.getContextPath()%>/${banner_data2.imageurl }" onerror="this.src='<%=request.getContextPath()%>/img/imgs/tab3_4.jpg'">								   
															  </div>
														</div>
														<div class="form-group has-error" id="favicon_msg_icon2" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*图片为必填项!</div></div>
														<input id="id-input-file-2" type="file" style="display:none;" name="banaerFile" />
														<div class="space-4"></div>
														<div class="text-center">
															<button class="btn btn-sm btn-success" type="button" onclick="bannerSubmit2();">
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
													<h4>网站轮播图3</h4>
													<div class="widget-toolbar">
														<a href="#" data-action="collapse">
															<i class="icon-chevron-up"></i>
														</a>
													</div>
												</div>
												<div class="widget-body">
												<div class="widget-body-inner" style="display: block;">
													<div class="widget-main">
													<form id="pic3Form" action="<%=request.getContextPath()%>/ht/index/banner/add.do" method="post" enctype="multipart/form-data">
														<input name="id" type="hidden" value="${banner_data3.id }">
														<div class="row">
														 <div class="col-xs-12">轮播图3：<span class="red">(图片比例应为1000X610)</span></div>
														</div>
														<div class="space-4"></div>
														<div class="row" onclick="$('#id-input-file-3').click();">
															  <div class="col-xs-12">
															   <img id="banaerFile3" class="img-thumbnail"  src="<%=request.getContextPath()%>/${banner_data3.imageurl }" onerror="this.src='<%=request.getContextPath()%>/img/imgs/tab3_4.jpg'">								   
															  </div>
														</div>
														<div class="form-group has-error" id="favicon_msg_icon3" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*图片为必填项!</div></div>
														<input id="id-input-file-3" type="file" style="display:none;" name="banaerFile" />
														<div class="space-4"></div>
														<div class="text-center">
															<button class="btn btn-sm btn-success" type="button" onclick="bannerSubmit3();">
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
				
				
				
				 $(function() {
			     $("#id-input-file-2").change(
			        function() {
			            var $file = $(this);
			            var fileObj = $file[0];
			            var windowURL = window.URL || window.webkitURL;
			            var dataURL;
			            var $img = $("#banaerFile2");
			            if (fileObj && fileObj.files && fileObj.files[0]) {
			                dataURL = windowURL.createObjectURL(fileObj.files[0]);
			                //允许上传的图片格式  
			                var newPreview = document.getElementById("id-input-file-2").value;
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
			                var imgObj = document.getElementById("banaerFile2");
			                imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
			                imgObj.filters
			                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
			            }
			        });
			    });
				
				
				
				 $(function() {
			     $("#id-input-file-3").change(
			        function() {
			            var $file = $(this);
			            var fileObj = $file[0];
			            var windowURL = window.URL || window.webkitURL;
			            var dataURL;
			            var $img = $("#banaerFile3");
			            if (fileObj && fileObj.files && fileObj.files[0]) {
			                dataURL = windowURL.createObjectURL(fileObj.files[0]);
			                //允许上传的图片格式  
			                var newPreview = document.getElementById("id-input-file-3").value;
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
			                var imgObj = document.getElementById("banaerFile3");
			                imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
			                imgObj.filters
			                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
			            }
			        });
			    });
				
				
				
				function bannerSubmit1(){
					var file=$("#id-input-file-1").val(); 
				   if(file==""){
				  $("#favicon_msg_icon").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon").hide();
				 }
               	 	  $("#pic1Form").submit();
				}
				
				
				
				
				function bannerSubmit2(){
				 var file=$("#id-input-file-2").val();
					var alert_msg="";
                     if(file==""){
				  $("#favicon_msg_icon2").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon2").hide();
				 }
               	 	  $("#pic2Form").submit();
               	 	}
				 
				
				
				
				
				function bannerSubmit3(){
				var file=$("#id-input-file-3").val();
				 if(file==""){
				  $("#favicon_msg_icon3").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon3").hide();
				 }
				 $("#pic3Form").submit();
				}
				
</script>
</html>