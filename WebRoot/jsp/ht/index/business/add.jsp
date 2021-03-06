﻿<!DOCTYPE html>
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
							<li class="active"><a href="<%=request.getContextPath()%>/ht/index/business/list.do">我们的业务</a></li>
							<li class="active">新增</li>
						</ul>
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
							   <!-- 插入内容 -->
							   <form class="form-horizontal" id="business_add_form" action="<%=request.getContextPath()%>/ht/index/business/add.do" method="post" enctype="multipart/form-data"> 
							   		<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>标题：</label>
										<div class="col-sm-9">
											<input class="col-xs-10 col-sm-5" name="business_title" type="text">
										</div>
									</div>
									<div class="space-4"></div>
									<div class="form-group">
                                         <label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>简介：</label>
                                         <div class="col-sm-9">
                                         <textarea class="col-xs-10 col-sm-5" id="business_context" name="business_context" style="height: 200px; resize: none;"></textarea>
                                         </div>
									</div>
									<div class="space-4"></div>
									<div class="form-group">
									     <label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>图片：</label>
                                         <div class="col-sm-9 ">
                                           <div class="ace-file-input ace-file-multiple col-xs-10 col-sm-5 text-center" onclick="$('#id-input-file').click();">
                                            <img src="<%=request.getContextPath()%>/img/imgs/tab3_4.jpg" class="img-thumbnail" id="img_business" >
                                           </div>
                                           <input id="id-input-file" type="file" style="display:none;" name="businessImage" />
                                         </div>
                                         <div class="col-sm-4 col-sm-offset-3 text-center red">图片尺寸：（1000X610）</div>
                                         <!-- <div class="col-sm-9">
									          <div class="ace-file-input ace-file-multiple col-xs-10 col-sm-5">
														  <input id="id-input-file-1" type="file"  name="businessImage">
											  </div>
										 </div> -->
									</div>
									<div class="row">
									     <div class="col-sm-4 col-sm-offset-3 text-center">
									       <div class="btn btn-lg btn-success" onclick="businessAdd();"><i class="icon-ok"></i>提交</div>
									     </div>
									</div>
							   </form>
							   
							  <!-- 插入内容 end-->
							</div>
						</div>
					</div>
				</div>
				<%@ include file="../../common/main_right_sz.inc"%>
			</div>
		</div>
</body>
<script type="text/javascript">
				/* $('#id-input-file-1').ace_file_input({
					style:'well',
					btn_choose:'点击选择需要上传的图片',
					btn_change:null,
					no_icon:'icon-picture',
					droppable:true,
					thumbnail:'small'
				}).on('change', function(){
					//console.log($(this).data('ace_input_files'));
					//console.log($(this).data('ace_input_method'));
				}); */
				
                function businessAdd(){
                    var title=$("input[name=business_title]").val();
				    var context=$("#business_context").val();
				    var file=$("input[name=businessImage]").val();
				    var alert_msg="";
                    if(title=="" || title==null){
                       alert_msg+="标题";
                    }
                    if(context=="" || context==null){
                       alert_msg+="简介 ";
                    }
                    if(file=="" || file==null){
                       alert_msg+="图片 ";
                    }
                    if(alert_msg!=""){
                      alert(alert_msg+"为必填项！\n");
                    }else{
               	 	  $("#business_add_form").submit();
               	 	}
                }
                
                  $(function() {
			     $("#id-input-file").change(
			        function() {
			            var $file = $(this);
			            var fileObj = $file[0];
			            var windowURL = window.URL || window.webkitURL;
			            var dataURL;
			            var $img = $("#img_business");
			            if (fileObj && fileObj.files && fileObj.files[0]) {
			                dataURL = windowURL.createObjectURL(fileObj.files[0]);
			                //允许上传的图片格式  
			                var newPreview = document.getElementById("id-input-file").value;
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
			                var imgObj = document.getElementById("img_business");
			                imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
			                imgObj.filters
			                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
			            }
			        });
			    });
</script>
</html>