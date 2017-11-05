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
							<li class="active">企业新闻</li>
						</ul>
						 <div class="widget-toolbar">
								<a class="btn btn-app btn-xs btn-success" href="<%=request.getContextPath()%>/ht/company/news/addbefore.do">新增</a>
						 </div>
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
							   <!-- 插入内容 -->
							   <div class="row">
									<div class="col-xs-12">
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
														<th class="text-center">操作</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${list}" var="list" varStatus="num">
														    <tr>
														   		<td>${num.count}</td>
																<td>${list.title}</td>
																<td>${list.imageurl}</td>
																<td>${list.updatetime}</td>
																
                                                             <td>   
                                                             <a class="btn btn-info btn-xs"  onclick="selectNews(${list.id})">修改</a>
                                                             <a class="btn btn-danger btn-xs" onclick="delNews(${list.id})">删除</a></td> 
															</tr>
													</c:forEach>		
												</tbody>
											</table>
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
			            var $img = $("#companyFile");
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
			                var imgObj = document.getElementById("companyFile");
			                imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
			                imgObj.filters
			                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
			            }
			        });
			    });
			    
			    
			    
			    function companySubmit1(){
			      var title=$("#title").val();
			      var redirectUrl=$("#id-input-file-1").val(); 
				  var context=$("#context").val();
				   if(title==""){
				  $("#favicon_msg_icon1").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon1").hide();
				 }
				 if(context==""){
				  $("#favicon_msg_icon6").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon6").hide();
				 }
				  if(redirectUrl==""){
				  $("#favicon_msg_icon11").show();
				  return ;
				 }else{
				   $("#favicon_msg_icon11").hide();
				 }
				 $("#companyForm").submit();
				}
				
				
function delNews(id){
       var msg = "确定要删除该新闻?";  
		    if (confirm(msg)){  
		         $.ajax({
				  type: 'POST',
				  url: "<%=request.getContextPath()%>/ht/company/news/delete.do",
				  data: {id:id},
				  dataType: 'json',  
				  complete: function(result){
			         window.location.href="<%=request.getContextPath()%>/ht/company/news/list.do";
			      }
				});
		     } 
   }
   
function selectNews(id){
   window.location.href="<%=request.getContextPath()%>/ht/company/news/editBefore.do?id="+id;
}   
</script>
</html>