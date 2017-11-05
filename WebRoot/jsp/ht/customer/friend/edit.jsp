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
								<i class="icon-group"></i>
								<a href="javascript:void(0)">企业客户</a>
							</li>
							<li class="active"><a href="<%=request.getContextPath()%>/ht/customer/friend/list.do">企业客户</a></li>
							<li class="active">编辑</li>
						</ul>
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
							   <!-- 插入内容 -->
							   <form class="form-horizontal" id="customer_update_form" action="<%=request.getContextPath()%>/ht/customer/friend/update.do" method="post" enctype="multipart/form-data"> 
							   		<input name="id" type="hidden" value="${Cus.id}">
							   		<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>公司名：</label>
										<div class="col-sm-9">
											<input class="col-xs-10 col-sm-5" name="imagename" type="text" value="<c:out value="${Cus.imagename}"></c:out>">
										</div>
									</div>
									<div class="space-4"></div>
									<div class="form-group">
									     <label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>图片：</label>
                                         <div class="col-sm-9 " >
                                           <div class="ace-file-input ace-file-multiple col-xs-10 col-sm-5 text-center" onclick="$('#id-input-file').click();">
                                            <img src="<%=request.getContextPath()%>/${Cus.imageurl}" class="img-thumbnail" id="img_friends"  onerror="this.src='<%=request.getContextPath()%>/img/imgs/tab3_4.jpg'" >
                                           </div>
                                           <input id="id-input-file" type="file" style="display:none;" name="friendsFile" />
                                         </div>
                                          <div class="col-sm-4 col-sm-offset-3 text-center red">图片尺寸：（1000X610）</div>
                                    </div>
                                    <div class="form-group has-error" id="favicon_msg_icon2" style="display:none"><div class="col-sm-4 col-sm-offset-3 text-center red">*图片为必填项!</div></div>
									<div class="row">
									     <div class="col-sm-4 col-sm-offset-3 text-center">
									       <div class="btn btn-lg btn-success" onclick=" CusUpdate();"><i class="icon-ok"></i>提交</div>
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
				function CusUpdate(){
                    var title=$("input[name=imagename]").val();
				    var file=$("input[name=friendsFile]").val();
                    if(title=="" || title==null){
                       $("#favicon_msg_icon1").show();
				       return ;
                    }
                    if(file=="" || file==null){
                      $("#favicon_msg_icon2").show();
				      return ;
                    }
               	 	  $("#customer_update_form").submit();
               	 	}
 			 $(function() {
			     $("#id-input-file").change(
			        function() {
			            var $file = $(this);
			            var fileObj = $file[0];
			            var windowURL = window.URL || window.webkitURL;
			            var dataURL;
			            var $img = $("#img_friends");
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
			                var imgObj = document.getElementById("img_friends");
			                imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
			                imgObj.filters
			                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
			            }
			        });
			    });
</script>
</html>