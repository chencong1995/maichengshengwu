<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<div class="sidebar" id="sidebar">
	<ul class="nav nav-list">
						<li <c:if test="${data.menu1 eq 'index'}">class="active open"</c:if>>
							<a href="javascript:void(0);" class="dropdown-toggle">
								<i class="icon-home home-icon"></i>
								<span class="menu-text">首页</span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li <c:if test="${data.menu2 eq 'logo'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/index/logo/list.do">
										<i class="icon-double-angle-right"></i>
										LOGO
									</a>
								</li>
								<li <c:if test="${data.menu2 eq 'banner'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/index/banner/list.do">
										<i class="icon-double-angle-right"></i>
										轮播图管理
									</a>
								</li>
								<li <c:if test="${data.menu2 eq 'service'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/index/service/list.do">
										<i class="icon-double-angle-right"></i>
										我们的服务
									</a>
								</li>
								<li <c:if test="${data.menu2 eq 'advantage'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/index/advantage/list.do">
										<i class="icon-double-angle-right"></i>
										我们的优势
									</a>
								</li>
								<li <c:if test="${data.menu2 eq 'business'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/index/business/list.do">
										<i class="icon-double-angle-right"></i>
										我们的业务
									</a>
								</li>
							</ul>
						</li>
						<li <c:if test="${data.menu1 eq 'product'}">class="active open"</c:if>>
							<a href="javascript:void(0);" class="dropdown-toggle">
								<i class="icon-briefcase"></i>
								<span class="menu-text">产品服务 </span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li <c:if test="${data.menu2 eq 'servicetype'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/product/servicetype/list.do">
										<i class="icon-double-angle-right"></i>
										服务类型
									</a>
								</li>
								<li <c:if test="${data.menu2 eq 'productlist'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/product/productlist/listType.do">
										<i class="icon-double-angle-right"></i>
										产品中心
									</a>
								</li>
							</ul>
						</li>
						<li <c:if test="${data.menu1 eq 'solution'}">class="active open"</c:if>>
							<a href="javascript:void(0);" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text">解决方案 </span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li <c:if test="${data.menu2 eq 'programme'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/solution/programme/listType.do">
										<i class="icon-double-angle-right"></i>
										解决方案
									</a>
								</li>
							</ul>
						</li>
						<li <c:if test="${data.menu1 eq 'customer'}">class="active open"</c:if>>
							<a href="javascript:void(0);" class="dropdown-toggle">
								<i class="icon-group"></i>
								<span class="menu-text">企业客户 </span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li <c:if test="${data.menu2 eq 'friend'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/customer/friend/list.do">
										<i class="icon-double-angle-right"></i>
										企业客户
									</a>
								</li>
							</ul>
						</li>
						<li <c:if test="${data.menu1 eq 'company'}">class="active open"</c:if>>
							<a href="javascript:void(0);" class="dropdown-toggle">
								<i class="icon-edit"></i>
								<span class="menu-text">关于我们</span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
							    <li <c:if test="${data.menu2 eq 'introduction'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/company/introduction/list.do">
										<i class="icon-double-angle-right"></i>
										企业简介
									</a>
								</li>
								<li <c:if test="${data.menu2 eq 'vision'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/company/vision/list.do">
										<i class="icon-double-angle-right"></i>
										企业愿景
									</a>
								</li>
								<li <c:if test="${data.menu2 eq 'news'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/company/news/list.do">
										<i class="icon-double-angle-right"></i>
										企业新闻
									</a>
								</li>
								<li <c:if test="${data.menu2 eq 'address'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/company/address/list.do">
										<i class="icon-double-angle-right"></i>
										企业地址
									</a>
								</li>
								<li <c:if test="${data.menu2 eq 'question'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/company/question/list.do">
										<i class="icon-double-angle-right"></i>
										问题咨询
									</a>
								</li>
							</ul>
						</li>
						<li <c:if test="${data.menu1 eq 'navigation'}">class="active open"</c:if>>
							<a href="javascript:void(0);" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text">导航管理 </span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li <c:if test="${data.menu2 eq 'top'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/navigation/top/list.do">
										<i class="icon-double-angle-right"></i>
										顶部菜单
									</a>
								</li>
								<li <c:if test="${data.menu2 eq 'bottom'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/navigation/bottom/list.do">
										<i class="icon-double-angle-right"></i>
										底部导航
									</a>
								</li>
							</ul>
						</li>
						<li <c:if test="${data.menu1 eq 'manager'}">class="active open"</c:if>>
							<a href="javascript:void(0);" class="dropdown-toggle">
								<i class="icon-cog"></i>
								<span class="menu-text">系统管理</span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li <c:if test="${data.menu2 eq 'administrators'}">class="active"</c:if>>
									<a href="<%=request.getContextPath()%>/ht/manager/administrators/list.do">
										<i class="icon-double-angle-right"></i>
										管理员设置
									</a>
								</li>
							</ul>
						</li>
					</ul>
					
					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>
			</div>