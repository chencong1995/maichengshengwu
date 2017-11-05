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
								<i class="icon-briefcase"></i>
								<a href="javascript:void(0)">产品服务</a>
							</li>
							<li class="active"><a href="javascript:void(0)">产品中心</a></li>
							<li class="active">新增</li>
						</ul>
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
							   <!-- 插入内容 -->
							   <form class="form-horizontal" id="AddpdtForm" action="${pageContext.request.contextPath}/ht/product/productlist/Addpdt.do" method="post" enctype="multipart/form-data"> 
							   		<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>标题：</label>
										<div class="col-sm-9">
											<input class="col-xs-10 col-sm-5" id="title" name="title" type="text">
											<div class="form-group has-error" id="msg1" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*标题为必选项!</div></div>
										<div class="form-group has-error" id="msg2" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*标题已存在!</div></div>
										</div>
										</div>
									<div class="space-4"></div>
									<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>产品类别：</label>
									   <div class="col-sm-9">
	                                        <select id="typeId" name="typeId">
												  <c:forEach var="list" items="${lists}">
													  <option value="${list.id}" selected>
													  ${list.name}
													  </option>
												  </c:forEach>
	                                       </select>
                                       </div>
									</div>
									<div class="space-4"></div>
									<div class="form-group">
									     <label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>图片：</label>
                                         <div class="col-sm-9 ">
                                           <div class="ace-file-input ace-file-multiple col-xs-10 col-sm-5 text-center" onclick="$('#id-input-file1').click();">
                                            <img src="<%=request.getContextPath()%>/img/imgs/tab3_4.jpg" class="img-thumbnail" id="pdtimage" >
                                           </div>
                                           <input id="id-input-file1" type="file" style="display:none;" name="pdtImage" />
                                         </div>
                                         <div class="col-sm-4 col-sm-offset-3 text-center">图片尺寸：（1000X610）</div>
                                         <div class="col-sm-4 col-sm-offset-3 text-center red" id="msg3" style="display:none">*图片为必选项!</div>
                                         <!-- <div class="col-sm-9">
									          <div class="ace-file-input ace-file-multiple col-xs-10 col-sm-5">
														  <input id="id-input-file-1" type="file"  name="businessImage">
											  </div>
										 </div> -->
									</div>
									<div class="row">
									     <div class="col-sm-4 col-sm-offset-3 text-center">
									       <div class="btn btn-lg btn-success" onclick="pdtAdd();"><i class="icon-ok"></i>提交</div>
									     </div>
									</div>
							   </form>
							   
							   
							</div>
						</div>
					</div>
				</div>
				<%@ include file="../../common/main_right_sz.inc"%>
			</div>.
		</div>
</body>
<script type="text/javascript">
 function pdtAdd(){
                    var title=$("#title").val();
				    var typeId=$("#typeId").val();
				    var file=$("#id-input-file1").val();
                    if(title=="" || title==null){
                       $("#msg1").show();
                    }
                    else if(file=="" || file==null){
                       $("#msg3").show();
                    }else{
                      $("#msg1").hide();
                      $("#msg3").hide();
      				  $.ajax({  
			            type:"POST",   //http请求方式  
			            url:"${pageContext.request.contextPath}/ht/product/productlist/titleCheck.do", //发送给服务器的url  
			            data:"title="+title, //发送给服务器的参数  
			            dataType:"json",  //告诉JQUERY返回的数据格式(注意此处数据格式一定要与提交的controller返回的数据格式一致,不然不会调用回调函数complete)  
			            error : function() {
                        alert('smx失败 ');
                         },
                         success : function(data) {
                           if(data=="已存在title"){
                               $("#msg2").show();
				               return ;
				            }else{
				              $("#msg2").hide();
				              $("#AddpdtForm").submit();
                           }
                        }
				        });
                }}

 $(function() {
			     $("#id-input-file1").change(
			        function() {
			            var $file = $(this);
			            var fileObj = $file[0];
			            var windowURL = window.URL || window.webkitURL;
			            var dataURL;
			            var $img = $("#pdtimage");
			            if (fileObj && fileObj.files && fileObj.files[0]) {
			                dataURL = windowURL.createObjectURL(fileObj.files[0]);
			                //允许上传的图片格式  
			                var newPreview = document.getElementById("id-input-file1").value;
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
			                var imgObj = document.getElementById("pdtimage");
			                imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
			                imgObj.filters
			                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
			            }
			        });
			    });  


			    
			    
	 
			   
                 
   
</script>	
</html>