<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
	<div class="navbar navbar-default" id="navbar">
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							科安恒盈-后台管理系统
						</small>
					</a>
				</div>
				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="<%=request.getContextPath()%>/jsp/ht/assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>欢迎光临,</small>${USERINFO.u_name }
								</span>
								<i class="icon-caret-down"></i>
							</a>
							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a onclick="edt('${USERINFO.u_id}');">
										<i class="icon-cog"></i>
										修改密码
									</a>
								</li>
								<!-- <li>
									<a href="#">
										<i class="icon-user"></i>
										个人资料
									</a>
								</li> -->
								<li class="divider"></li>
								<li>
									<a href="<%=request.getContextPath()%>/ht/exit.do">
										<i class="icon-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<script type="text/javascript">
        function edt(id){
	  window.location.href="<%=request.getContextPath()%>/ht/manager/administrators/search.do?uid="+id;
	}
	
</script>
   
    
  