<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="common/inc/tag.inc"%>
<%@ include file="common/inc/script.inc"%>
<%@ include file="common/inc/style.inc"%>
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
		<%@ include file="common/main_top.inc"%>
		<div class="main-container" id="main-container">
			<div class="main-container-inner">
				<%@ include file="common/main_left_menu.inc"%>
				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="javascript:void(0)">首页</a>
							</li>
							<li class="active">LOGO</li>
						</ul>
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<div class="alert alert-block alert-success">
									<button type="button" class="close" data-dismiss="alert">
										<i class="icon-remove"></i>
									</button>
									欢迎使用
									<strong class="green">
										科安恒盈-后台管理系统
									</strong>
									。科安，科技让你更安心！
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table class="table table-striped table-bordered table-hover" id="sample-table-1">
												<thead>
													<tr>
														<th class="center">
															<label>
																<input class="ace" type="checkbox">
																<span class="lbl"></span>
															</label>
														</th>
														<th>Domain</th>
														<th>Price</th>
														<th class="hidden-480">Clicks</th>
														<th>
															<i class="icon-time bigger-110 hidden-480"></i>
															Update
														</th>
														<th class="hidden-480">Status</th>
														<th></th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td class="center">
															<label>
																<input class="ace" type="checkbox">
																<span class="lbl"></span>
															</label>
														</td>
														<td><a href="#">ace.com</a></td>
														<td>$45</td>
														<td class="hidden-480">3,330</td>
														<td>Feb 12</td>
														<td class="hidden-480"><span class="label label-sm label-warning">Expiring</span></td>
														<td>
															<div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
																<button class="btn btn-xs btn-success">
																	<i class="icon-ok bigger-120"></i>
																</button>
																<button class="btn btn-xs btn-info">
																	<i class="icon-edit bigger-120"></i>
																</button>
																<button class="btn btn-xs btn-danger">
																	<i class="icon-trash bigger-120"></i>
																</button>
																<button class="btn btn-xs btn-warning">
																	<i class="icon-flag bigger-120"></i>
																</button>
															</div>
															<div class="visible-xs visible-sm hidden-md hidden-lg">
																<div class="inline position-relative">
																	<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
																		<i class="icon-cog icon-only bigger-110"></i>
																	</button>
																	<ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
																		<li>
																			<a title="" class="tooltip-info" href="#" data-original-title="View" data-rel="tooltip">
																				<span class="blue">
																					<i class="icon-zoom-in bigger-120"></i>
																				</span>
																			</a>
																		</li>
																		<li>
																			<a title="" class="tooltip-success" href="#" data-original-title="Edit" data-rel="tooltip">
																				<span class="green">
																					<i class="icon-edit bigger-120"></i>
																				</span>
																			</a>
																		</li>
																		<li>
																			<a title="" class="tooltip-error" href="#" data-original-title="Delete" data-rel="tooltip">
																				<span class="red">
																					<i class="icon-trash bigger-120"></i>
																				</span>
																			</a>
																		</li>
																	</ul>
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<td class="center">
															<label>
																<input class="ace" type="checkbox">
																<span class="lbl"></span>
															</label>
														</td>
														<td>
															<a href="#">best.com</a>
														</td>
														<td>$75</td>
														<td class="hidden-480">6,500</td>
														<td>Apr 03</td>
														<td class="hidden-480">
															<span class="label label-sm label-inverse arrowed-in">Flagged</span>
														</td>
														<td>
															<div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
																<button class="btn btn-xs btn-success">
																	<i class="icon-ok bigger-120"></i>
																</button>
																<button class="btn btn-xs btn-info">
																	<i class="icon-edit bigger-120"></i>
																</button>
																<button class="btn btn-xs btn-danger">
																	<i class="icon-trash bigger-120"></i>
																</button>
																<button class="btn btn-xs btn-warning">
																	<i class="icon-flag bigger-120"></i>
																</button>
															</div>
															<div class="visible-xs visible-sm hidden-md hidden-lg">
																<div class="inline position-relative">
																	<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
																		<i class="icon-cog icon-only bigger-110"></i>
																	</button>
																	<ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
																		<li>
																			<a title="" class="tooltip-info" href="#" data-original-title="View" data-rel="tooltip">
																				<span class="blue">
																					<i class="icon-zoom-in bigger-120"></i>
																				</span>
																			</a>
																		</li>
																		<li>
																			<a title="" class="tooltip-success" href="#" data-original-title="Edit" data-rel="tooltip">
																				<span class="green">
																					<i class="icon-edit bigger-120"></i>
																				</span>
																			</a>
																		</li>
																		<li>
																			<a title="" class="tooltip-error" href="#" data-original-title="Delete" data-rel="tooltip">
																				<span class="red">
																					<i class="icon-trash bigger-120"></i>
																				</span>
																			</a>
																		</li>
																	</ul>
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<td class="center">
															<label>
																<input class="ace" type="checkbox" />
																<span class="lbl"></span>
															</label>
														</td>
														<td>
															<a href="#">pro.com</a>
														</td>
														<td>$55</td>
														<td class="hidden-480">4,250</td>
														<td>Jan 21</td>
														<td class="hidden-480">
															<span class="label label-sm label-success">Registered</span>
														</td>
														<td>
															<div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
																<button class="btn btn-xs btn-success">
																	<i class="icon-ok bigger-120"></i>
																</button>
																<button class="btn btn-xs btn-info">
																	<i class="icon-edit bigger-120"></i>
																</button>
																<button class="btn btn-xs btn-danger">
																	<i class="icon-trash bigger-120"></i>
																</button>
																<button class="btn btn-xs btn-warning">
																	<i class="icon-flag bigger-120"></i>
																</button>
															</div>
															<div class="visible-xs visible-sm hidden-md hidden-lg">
																<div class="inline position-relative">
																	<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
																		<i class="icon-cog icon-only bigger-110"></i>
																	</button>
																	<ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
																		<li>
																			<a title="" class="tooltip-info" href="#" data-original-title="View" data-rel="tooltip">
																				<span class="blue">
																					<i class="icon-zoom-in bigger-120"></i>
																				</span>
																			</a>
																		</li>
																		<li>
																			<a title="" class="tooltip-success" href="#" data-original-title="Edit" data-rel="tooltip">
																				<span class="green">
																					<i class="icon-edit bigger-120"></i>
																				</span>
																			</a>
																		</li>
																		<li>
																			<a title="" class="tooltip-error" href="#" data-original-title="Delete" data-rel="tooltip">
																				<span class="red">
																					<i class="icon-trash bigger-120"></i>
																				</span>
																			</a>
																		</li>
																	</ul>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%@ include file="common/main_right_sz.inc"%>
			</div>
		</div>
</body>
</html>

		<script type="text/javascript">

			jQuery(function($) {
                $('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox').each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
				});
                $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
					var off2 = $source.offset();
					var w2 = $source.width();
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				 }
			})
		</script>