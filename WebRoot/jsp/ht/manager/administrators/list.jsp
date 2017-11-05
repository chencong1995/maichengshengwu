<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../../common/inc/tag.inc"%>
<%@ include file="../../common/inc/script.inc"%>
<%@ include file="../../common/inc/style.inc"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
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
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>
					<ul class="breadcrumb">
						<li><i class="icon-cog"></i> <a
							href="javascript:void(0)">系统管理</a></li>
						<li class="active" href="javascript:void(0)">管理员设置</li>
					</ul>
					<div class="widget-toolbar">
								<a class="btn btn-app btn-xs btn-success" href="../administrators/addBefore.do">新增</a>
						 </div>
				</div>
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							<div class="row">
								<div class="col-xs-12">
									<div class="table-responsive">
										<table class="table table-striped table-bordered table-hover text-center"
											id="sample-table-1" >
											<thead>
												<tr >
													<th class="text-center">编号</th>
													<th class="text-center">姓名</th>
													<th class=" text-center" >状态</th>
													<th class="text-center"><i class="icon-time bigger-110 hidden-480"></i>
														添加时间</th> 
													<th class="text-center">添加人员</th>
													<th class="text-center">操作</th>
												</tr>
											</thead>
											<tbody>
													<c:forEach items="${user}" var="u" varStatus="num">  
													 <tr>
                                                     <td>${num.count}
                                                     <input type="hidden" name="uid" id="uid" value="${u.u_id}"/>
                                                     </td>
                                                     <td>${u.u_name}</td>
                                                     <td>
                                                     <div class="form-group">
										               <div class="col-sm-12">
										                 <label>
											             <input id="status" name="u_status" class="ace ace-switch ace-switch-5" type="checkbox" value="${u.u_status}" onclick="updateStatus('${u.u_id}','${u.u_status}');" 
											              <c:if test="${u.u_status ==1}">checked</c:if>>
											               <span class="lbl"></span>
										                 </label>
										              </div>
													 </div> 
                                                     </td>
                                                     <td>${u.u_createtime}</td>
                                                     <td>${u.u_createname}</td>
                                                     <td><a class="btn btn-info btn-xs" onclick="edt('${u.u_id}');">编辑</a>
                                                     <a class="btn btn-danger btn-xs" onclick="del('${u.u_id}');">删除</a></td>
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
</html>
<script type="text/javascript">
	function del(id){
	  window.location.href="../administrators/delete.do?uid="+id;
	}
	
	function edt(id){
	  window.location.href="../administrators/search.do?uid="+id;
	}
	
	function checktype(id,status){
	if(status==1){
	    $("input[name='u_status']").val("0");
	  }else{
	    $("input[name='u_status']").val("1");
	  }
	 window.location.href="<%=request.getContextPath()%>/ht/manager/administrators/updateStatus.do?id="+id+"&status="+status;
	}
	
	
	
	
	function updateStatus(id,status){
			        $.ajax({  
			            type:"POST",   //http请求方式  
			            url:"${pageContext.request.contextPath}/ht/manager/administrators/updates.do", //发送给服务器的url  
			            data:"id="+id+"&status="+status , //发送给服务器的参数  
			            dataType:"json",  //告诉JQUERY返回的数据格式(注意此处数据格式一定要与提交的controller返回的数据格式一致,不然不会调用回调函数complete)  
			            success:function(msg) {  
			                if (msg) {
                         } else {  
				             return ;
                                }  
                             }
				        });  
                }
  
</script>