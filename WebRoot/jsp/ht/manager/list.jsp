<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../common/inc/tag.inc"%>
<%@ include file="../common/inc/script.inc"%>
<%@ include file="../common/inc/style.inc"%>
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
	<%@ include file="../common/main_top.inc"%>
	<div class="main-container" id="main-container">
		<div class="main-container-inner">
			<%@ include file="../common/main_left_menu.inc"%>
			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>
					<ul class="breadcrumb">
						<li><i class="icon-home home-icon"></i> <a
							href="javascript:void(0)">系统管理</a></li>
						<li class="active">管理员设置</li>
					</ul>
					<div class="widget-toolbar">
								<a class="btn btn-app btn-xs btn-success" href="../manager/addBefore.do">新增</a>
						 </div>
				</div>
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							<div class="row">
								<div class="col-xs-12">
									<div class="table-responsive">
										<table class="table table-striped table-bordered table-hover"
											id="sample-table-1">
											<thead>
												<tr>
													<th>管理员编号</th>
													<th>管理员姓名</th>
													<th class="hidden-480">状态</th>
													<th><i class="icon-time bigger-110 hidden-480"></i>
														添加时间</th>
													<th class="hidden-480">添加人员</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
													<c:forEach items="${user}" var="u">  
													 <tr>
                                                     <td>${u.u_id}</td>
                                                     <td>${u.u_name}</td>
                                                     <td>${u.u_status}</td>
                                                     <td>${u.u_createtime}</td>
                                                     <td>${u.u_createname}</td>
                                                     <td>
                                                     <a class="btn btn-info btn-xs">编辑</a>
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
			<%@ include file="../common/main_right_sz.inc"%>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
	function del(id){
	  window.location.href="../manager/delete.do?uid="+id;
	}
</script>