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
							<li class="active">我们的业务</li>
						</ul>
						 <div class="widget-toolbar">
								<a class="btn btn-app btn-xs btn-success" href="<%=request.getContextPath()%>/ht/index/business/addpage.do">新增</a>
						 </div>
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
							   <!-- 插入内容 -->
							   <div class="row">
									<div class="col-xs-12 ">
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
												    <c:forEach items="${data.dataList}" var="list" varStatus="num">
													    <tr>
															<td>${num.count}</td>
															<td>${list.title}</td>
															<td>${list.imageurl}</td>
															<td>${list.updatetime}</td>
															<td>
																<a class="btn btn-info btn-xs"   onclick="edit_business('${list.id}')">编辑</a>
                                                   	  			<a class="btn btn-danger btn-xs" onclick="del_business('${list.id}','<c:out value="${list.title}"></c:out>');">删除</a>
                                                   	  		</td>
														</tr>
												    </c:forEach>
												</tbody>
											</table>
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
		<form id="edit_form" method="post" action="<%=request.getContextPath()%>/ht/index/business/editpage.do" >
		 <input name="id" type="hidden">
		</form>
</body>
<script type="text/javascript">
		function del_business(id,title){
		    var msg = "确定要删除标题："+title;  
		    if (confirm(msg)){  
		         $.ajax({
				  type: 'POST',
				  url: "<%=request.getContextPath()%>/ht/index/business/del.do",
				  data: {id:id},
				  dataType: 'json',
				  success: function(result){
			        if(result==0){
			         alert("删除失败！");
			        }
			        if(result==1){
			         alert("删除成功！");
			        }
			        window.location.href="<%=request.getContextPath()%>/ht/index/business/list.do";
			      }
				});
		     }
		 }
		 function edit_business(id){
		    $("input[name=id]").val(id);
		    $("#edit_form").submit();
		 }

</script>
</html>