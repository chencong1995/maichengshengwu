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
							<li class="active">问题咨询</li>
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
														<th class="text-center">姓名</th>
														<th class="text-center">项目</th>
														<th class="text-center">
															<i class="icon-time bigger-110"></i>
															时间
														</th>
														<th class="text-center">状态</th>
													</tr>
												</thead>
												<tbody>
												    <c:forEach items="${lists}" var="list" varStatus="num">
													    <tr>
															<td>${num.count}</td>
															<td>${list.m_name}</td>
															<td>${list.m_subject}</td>
															<td>${list.m_createtime}</td>
															<td>
																<div class="form-group">
													               <div class="col-sm-12">
													                 <label>
													                 <c:if test="${list.m_status ==1}">
																		已解决
																	 </c:if>
																	  <c:if test="${list.m_status ==0}">
																		<input id="status" name="u_status" class="ace ace-switch ace-switch-5" type="checkbox" value="${list.m_status}" onclick="updateStatus(${list.m_id});" 
																					<c:if test="${list.m_status ==1}">checked</c:if>>
																	 </c:if>
														               <span class="lbl"></span>
													                 </label>
													              </div>
																 </div> 
															</td>
															<!-- <td><a class="btn btn-info btn-xs" onclick="selectCus(${list.m_id})">编辑</a>
                                                     <a class="btn btn-danger btn-xs" onclick="del(${list.m_id})">删除</a></td> -->
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
  function updateStatus(id){
        window.location.href="${pageContext.request.contextPath}/ht/company/question/update.do?id="+id;
   }
</script>
</html>