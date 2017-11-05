<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="common/inc/tag.inc"%>
<%@ include file="common/inc/script.inc"%>
<%@ include file="common/inc/style.inc"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta name="keywords" content="国安恒盈,科安恒盈,司法矫正,视频会议,手环">
	<meta name="description" content="国安恒盈,科安恒盈,司法矫正,视频会议,手环">
	<meta name="author" content="lg">
	<title>${FAVICONTITLE}</title>
</head>
<body>
	<%@ include file="common/main_top.inc"%>
    <div class="breadcrumbs">
    	<div class="container">
            <h1 class="title-page">解决方案</h1>
        </div>
    </div>
    <div class="wrapper">
    	<div class="container">
        	<div class="content_block row no-sidebar">
            	<div class="fl-container">
                	<div class="posts-block">
                        <div class="contentarea">                                                         
                             
                            <!-- Filter_block -->
                            <div class="filter_block container animate" data-anim-type="bounceIn" data-anim-delay="300">
                                <div class="filter_navigation">
                                    <ul id="options" class="splitter">
                                        <li>
                                            <ul data-option-key="filter" class="optionset">
                                                <li class="selected"><a data-option-value="*" data-catname="all" href="#filter">所有</a></li>
                                                <li><a data-option-value=".polygraphy" data-catname="polygraphy" href="#filter">会议系统</a></li>
                                                <li><a data-option-value=".textstyle" data-catname="textstyle" href="#filter">智慧教育</a></li>
                                                <li><a data-option-value=".branding" data-catname="branding" href="#filter">司法矫正</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="row pb50 animate" data-anim-type="fadeInUp" data-anim-delay="300">
                                <div class="sorting_block image-grid featured_items photo_gallery column1" id="list">
                                	
                                	
                                	
                                	
                                	<c:forEach items="${polygraphy}" var="list" varStatus="num">
									   <div class="col-sm-12 polygraphy element">                    
	                                        <div class="portfolio_item item">
	                                        	<div class="row">
	                                                <div class="col-sm-6 pb7">
	                                                    <div class="img_block wrapped_img">
	                                                        <img alt="" src="${list.imageurl}" />
	                                                        <span class="block_fade"></span>
	                                                        <div class="post_hover_info">
	                                                            <div class="featured_items_title">
	                                                                <h5>${list.title}</h5>
	                                                            </div>
	                                                            <a href="${list.imageurl}" class="photozoom featured_ico_link view_link"><i class="icon-expand"></i></a>
	                                                           
	                                                        </div>                                                            
	                                                    </div>
	                                                </div>
	                                                <div class="col-sm-6">
	                                                    <h2 class="portf_title"><a href="javascript:void(0);">视频会议系统</a></h2>
	                                                    ${con1}                                                                                                        
	                                                </div>                                        
	                                            </div>                                                                        	
	                                        </div>                                   
                                   		 </div>
								   </c:forEach>
                                    
                                    
                                    <c:forEach items="${textstyle}" var="list" varStatus="num">
									   <div class="col-sm-12 textstyle element">                    
	                                        <div class="portfolio_item item">
	                                        	<div class="row">
	                                                <div class="col-sm-6 pb7">
	                                                    <div class="img_block wrapped_img">
	                                                        <img alt="" src="${list.imageurl}" />
	                                                        <span class="block_fade"></span>
	                                                        <div class="post_hover_info">
	                                                            <div class="featured_items_title">
	                                                                <h5>${list.title}</h5>
	                                                            </div>
	                                                            <a href="${list.imageurl}" class="photozoom featured_ico_link view_link"><i class="icon-expand"></i></a>
	                                                           
	                                                        </div>                                                            
	                                                    </div>
	                                                </div>
	                                                <div class="col-sm-6">
	                                                    <h2 class="portf_title"><a href="javascript:void(0);">智慧教育云平台解决方案</a></h2>
	                                                    ${con2}                                                                                                        
	                                                </div>                                        
	                                            </div>                                                                        	
	                                        </div>                                   
                                   		 </div>
								 </c:forEach>
								 
								 
								 <c:forEach items="${branding}" var="list" varStatus="num">
									   <div class="col-sm-12 branding element">                    
	                                        <div class="portfolio_item item">
	                                        	<div class="row">
	                                                <div class="col-sm-6 pb7">
	                                                    <div class="img_block wrapped_img">
	                                                        <img alt="" src="${list.imageurl}" />
	                                                        <span class="block_fade"></span>
	                                                        <div class="post_hover_info">
	                                                            <div class="featured_items_title">
	                                                                <h5>${list.title}</h5>
	                                                            </div>
	                                                            <a href="${list.imageurl}" class="photozoom featured_ico_link view_link"><i class="icon-expand"></i></a>
	                                                           
	                                                        </div>                                                            
	                                                    </div>
	                                                </div>
	                                                <div class="col-sm-6">
	                                                    <h2 class="portf_title"><a href="javascript:void(0);">司法矫正管理平台</a></h2>
	                                                    ${con}                                                                                                        
	                                                </div>                                        
	                                            </div>                                                                        	
	                                        </div>                                   
                                   		 </div>
								</c:forEach>
                                    
                                </div>
                                <div class="clear"></div>
                                <!-- <div class="text-center mt_10"><a href="javascript:void(0);" class="load_more_works shortcode_button btn_normal btn_type5">Load More</a></div> -->
                            </div>                             
                                                    
                            
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    
    <%@ include file="common/main_footer.inc"%>
    
    <div class="fixed-menu"></div>
    
	
    <!-- Portfolio -->
    <!-- <script>	
		items_set = [                    
			{src : 'img/portfolio/570_379/5.jpg', zoom : 'img/portfolio/570_379/5.jpg', url : 'portfolio_post_fullwidth.html', sortcategory: 'branding textstyle', title: 'Praesent mi magna', itemdate: 'Dec 03, 2020', itemcategory: 'Category: <a href="javascript:void(0);">typography</a>', itemauthor: 'Client: <a href="javascript:void(0);">gt3dev</a>', itemtime: 'Time spent: <a href="javascript:void(0);">2 days</a>', itemdescr: 'Sed ullamcorper dignissim consectetur ut tincidunt eros sed sapien consectetur dictum. Ultrices posuere cubilia curae curabitur sit amet tortor ut massa commodo. Vestibulum consectetur euismod malesuada tincidunt cum. Pellentesques sed volutpat ante, cursus port. Praesent mi magna, penatibus et magniseget dis parturient montes, nascetur ridiculus mus, commodo id eros dapibus, vestibulum luctus, tortor. Morbi eget turpis justo vestibulum est elit, congue nec metus rutrum nullam, ut consectetur ipsum aliquam semper fringilla fermentum. Ut ullamcorper nibh a mauris luctus, sit amet pulvinar ligula venenatis nunc ac suscipit, sapien nec gravida vehicula, mauris lectus a nec. Lobortis nibh, at mattis turpis lectus nec ligula. Maecenas varius dignissim ultrices. Sed dignissim, ac bibendum varius. Vestibulum ante ipsum primis in faucibus orci luctus nunc ac suscipit, sapien nec gravida vehicula, mauris lectus a nec. Lobortis nibh, at mattis turpis lectus nec ligula.'},
			{src : 'img/portfolio/570_379/6.jpg', zoom : 'img/portfolio/570_379/6.jpg', url : 'portfolio_post_fullwidth.html', sortcategory: 'polygraphy webui', title: 'Ut enim ad minima', itemdate: 'Dec 02, 2020', itemcategory: 'Category: <a href="javascript:void(0);">typography</a>', itemauthor: 'Client: <a href="javascript:void(0);">gt3dev</a>', itemtime: 'Time spent: <a href="javascript:void(0);">2 days</a>', itemdescr: 'Praesent mi magna, penatibus et magniseget dis parturient montes, nascetur ridiculus mus, commodo id eros dapibus, vestibulum luctus, tortor. Ultrices posuere cubilia curae curabitur sit amet tortor ut massa commodo. Vestibulum consectetur euismod malesuada tincidunt cum. Sed ullamcorper dignissim consectetur ut tincidunt eros sed sapien consectetur dictum. Pellentesques sed volutpat ante, cursus port. Morbi eget turpis justo vestibulum est elit, congue nec metus rutrum nullam, ut consectetur ipsum aliquam semper fringilla fermentum. Ut ullamcorper nibh a mauris luctus, sit amet pulvinar ligula venenatis nunc ac suscipit, sapien nec gravida vehicula, mauris lectus a nec. Lobortis nibh, at mattis turpis lectus nec ligula. Maecenas varius dignissim ultrices. Sed dignissim, ac bibendum varius. Vestibulum ante ipsum primis in faucibus orci luctus nunc ac suscipit, sapien nec gravida vehicula, mauris lectus a nec. Lobortis nibh, at mattis turpis lectus nec ligula.'}
		];
		jQuery('#list').portfolio_addon({
			type : 1, // 1 column portfolio
			load_count : 2,
			items : items_set
		});
	</script>  -->
</body>
</html>