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
							<li class="active">企业客户</li>
						</ul>
						 <div class="widget-toolbar">
								<a class="btn btn-app btn-xs btn-success" href="<%=request.getContextPath()%>/ht/customer/friend/addbefore.do">新增</a>
						 </div>
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
														<th class="text-center">状态</th>
														<th class="text-center">操作</th>
													</tr>
												</thead>
												<tbody>
												    <c:forEach items="${lists}" var="list" varStatus="num">
													    <tr>
															<td>${num.count}</td>
															<td>${list.imagename}</td>
															<td>${list.imageurl}</td>
															<td>${list.updatetime}</td>
															<td>
																<div class="form-group">
													               <div class="col-sm-12">
													                 <label>
														             <input id="status" name="u_status" class="ace ace-switch ace-switch-5" type="checkbox" value="${LIST.status}" onclick="updateStatus('${list.id}','${list.status}');" 
														              <c:if test="${list.status ==1}">checked</c:if>>
														               <span class="lbl"></span>
													                 </label>
													              </div>
																 </div> 
															</td>
															<td><a class="btn btn-info btn-xs" onclick="selectCus(${list.id})">编辑</a>
                                                     <a class="btn btn-danger btn-xs" onclick="del(${list.id})">删除</a></td>
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
				<!-- 分页功能 start -->  
    <div align="center">  
        <font size="2">共 ${page.totalPageCount} 页</font> <font size="2">第  
            ${page.pageNow} 页</font> <a href="list.do?pageNow=1">首页</a>  
        <c:choose>  
            <c:when test="${page.pageNow - 1 > 0}">  
                <a href="list.do?pageNow=${page.pageNow - 1}">上一页</a>  
            </c:when>  
            <c:when test="${page.pageNow - 1 <= 0}">  
                <a href="list.do?pageNow=1">上一页</a>  
            </c:when>  
        </c:choose>  
        <c:choose>  
            <c:when test="${page.totalPageCount==0}">  
                <a href="list.do?pageNow=${page.pageNow}">下一页</a>  
            </c:when>  
            <c:when test="${page.pageNow + 1 < page.totalPageCount}">  
                <a href="list.do?pageNow=${page.pageNow + 1}">下一页</a>  
            </c:when>  
            <c:when test="${page.pageNow + 1 >= page.totalPageCount}">  
                <a href="list.do?pageNow=${page.totalPageCount}">下一页</a>  
            </c:when>  
        </c:choose>  
        <c:choose>  
            <c:when test="${page.totalPageCount==0}">  
                <a href="list.do?pageNow=${page.pageNow}">尾页</a>  
            </c:when>  
            <c:otherwise>  
                <a href="list.do?pageNow=${page.totalPageCount}">尾页</a>  
            </c:otherwise>  
        </c:choose>  
    </div>  
    <!-- 分页功能 End -->  
			</div>
		</div>
</body>
<script type="text/javascript">
   function selectCus(id){
       window.location.href="../friend/selectById.do?id="+id;
   }
   
   function del(id){
	  window.location.href="../friend/deletetById.do?id="+id;
	}
	
	function updateStatus(id,status){
			        $.ajax({  
			            type:"POST",   //http请求方式  
			            url:"${pageContext.request.contextPath}/ht/customer/friends/updateStatus.do", //发送给服务器的url  
			            data:"id="+id+"&status="+status , //发送给服务器的参数  
			            dataType:"json",  //告诉JQUERY返回的数据格式(注意此处数据格式一定要与提交的controller返回的数据格式一致,不然不会调用回调函数complete)  
			            success:function(msg) {  
			             if (msg) {
                         
                         } else {  
				             return ;
                              }  
                         }
				        })
     }
</script>
</html>