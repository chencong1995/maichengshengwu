<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style2.css" />
<div class="main_header type1">
	<div class="header_parent_wrap">
		<header>
			<div class="container" style="margin-right: 0px;margin-left: 0px;width: 100%;padding-left: 0px;padding-right: 0px;">

				<div class="row">
				<div class="col-sm-12" >
					<div class="col-lg-3 col-md-3 col-sm-12">
						<div class="logo" style="padding-top: 5%;height:80px;">
							<a href="<%=request.getContextPath()%>/${LOGOURL}"><img
								src="<%=request.getContextPath()%>/${LOGOIMAGER}"
								alt="迈成生物logo" style="height: 60px;width: 300px;padding-left: 28%;">
							</a>
						</div>
					</div>
					<div class="col-lg-6 col-md-5 col-sm-12 hidden-xs" style="padding-left: 10%;height:80px;">
						<div class="search-form">
							<form id="search-form" action="search.php" method="get"
								name="searchForm" onsubmit="return checkSearchForm()">
								<input type="search" placeholder="输入产品名，CAS号，货号" name="keywords"
									id="keyword" value="" autocomplete="off">
								<button type="submit" style="width: 30%;height:99%;">
									<i class="fa fa-search"></i>搜索产品
								</button>
								<input type="hidden" value="k1" name="dataBi">
							</form>
						</div>
					</div>
					<div class="col-lg-3  col-md-4 col-sm-12" style="padding-left: 8%;height:80px;">
						<div class="header-right-menu">
							<ul class="header-r-cart">
								<li><a> <i class="fa fa-phone"></i> 400-968-6088 </a></li>
							</ul>
						</div>
					</div>
				</div>
					<div class=" col-sm-12" style="background: rgba(128, 128, 128, 0.74);">
					 <nav >
                        <ul class="menu" style="padding-left: 20%; height:70px;">
                            <li <c:if test="${menuflag eq 'index' }"> class="current-menu-parent menu-item-has-children"</c:if><c:if test="${menuflag ne 'index' }">class="menu-item-has-children"</c:if>><a href="<%=request.getContextPath() %>/index.do">首页</a></li>
                            <li <c:if test="${menuflag eq 'service' }"> class="current-menu-parent menu-item-has-children"</c:if><c:if test="${menuflag ne 'service' }">class="menu-item-has-children"</c:if>><a href="<%=request.getContextPath() %>/service.do">产品服务</a></li>
                            <li <c:if test="${menuflag eq 'product' }"> class="current-menu-parent menu-item-has-children"</c:if><c:if test="${menuflag ne 'product' }">class="menu-item-has-children"</c:if>><a href="<%=request.getContextPath() %>/product.do">解决方案</a></li>
                            <li <c:if test="${menuflag eq 'gallery' }"> class="current-menu-parent menu-item-has-children"</c:if><c:if test="${menuflag ne 'gallery' }">class="menu-item-has-children"</c:if>><a href="<%=request.getContextPath() %>/gallery.do">企业客户</a></li>
                            <li <c:if test="${menuflag eq 'about' }"> class="current-menu-parent menu-item-has-children"</c:if><c:if test="${menuflag ne 'about' }">class="menu-item-has-children"</c:if>><a href="<%=request.getContextPath() %>/about.do">关于我们</a></li>
                            <li <c:if test="${menuflag eq 'contactus' }"> class="current-menu-parent menu-item-has-children"</c:if><c:if test="${menuflag ne 'contactus' }">class="menu-item-has-children"</c:if>><a href="<%=request.getContextPath() %>/contactus.do">联系我们</a></li>
                        </ul>                                  
                    </nav>                   
					</div>
					
				</div>
			</div>
		</header>
	</div>
</div>


