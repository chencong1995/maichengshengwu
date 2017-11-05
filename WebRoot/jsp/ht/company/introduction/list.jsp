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
							<li class="active">企业简介</li>
						</ul>
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
							   <!-- 插入内容 -->
								<div class="row">
										<div class="col-xs-6 col-sm-offset-3">
											<div class="widget-box">
												<div class="widget-header">
													<h4>企业简介</h4>
													<div class="widget-toolbar">
														<a href="#" data-action="collapse">
															<i class="icon-chevron-up"></i>
														</a>
													</div>
												</div>
												<div class="widget-body">
												<div class="widget-body-inner" style="display: block;">
													<div class="widget-main">
													<form id="companyForm1" action="<%=request.getContextPath()%>/ht/company/introduction/update.do" method="post" enctype="multipart/form-data">
														<input id="id" name="id" value="${list.id}" style="display:none"></input>
														<div class="form-group has-error" id="favicon_msg_icon2" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*内容为必填项!</div></div>
														<div>
															<label for="form-field-8">内容：</label>
															<!--style给定宽度可以影响编辑器的最终宽度-->
															<textarea class="form-control limited"type="text/plain" id="myEditor" name="context" style="margin-top: 0px; margin-bottom: 0px; height: 256px;">${con}</textarea>
														</div>
														<div class="row">
														 <div class="col-xs-12">服务-左1：<span class="red">(图片比例应为570X386)</span></div>
														</div>
														<div class="space-4"></div>
														<div class="row" onclick="$('#id-input-file-1').click();">
															  <div class="col-xs-12  text-center" >
															   <img id="companyFile1" class="img-thumbnail"  src="<%=request.getContextPath()%>/${list.imageurl }" onerror="this.src='<%=request.getContextPath()%>/img/imgs/tab3_4.jpg'">								   
															  </div>
														</div>
														<div class="form-group has-error" id="favicon_msg_icon9" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*必填项!</div></div>
														<input id="id-input-file-1" type="file" style="display:none;" name="file"/>
														<div class="space-4"></div>
														<div class="text-center">
															<button class="btn btn-sm btn-success" type="button" onclick="companySubmit1();">
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
					</div>
				<%@ include file="../../common/main_right_sz.inc"%>
				
				
				
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
			            var $img = $("#companyFile1");
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
			                var imgObj = document.getElementById("companyFile1");
			                imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
			                imgObj.filters
			                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
			            }
			        });
			    });
			    
			    
			    
			    function companySubmit1(){
			      var redirectUrl=$("#id-input-file-1").val(); 
				  var context=$("#context").val();
				 if(context==""){
				  $("#favicon_msg_icon2").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon2").hide();
				 }
				 $("#companyForm1").submit();
				}
</script>
</html>