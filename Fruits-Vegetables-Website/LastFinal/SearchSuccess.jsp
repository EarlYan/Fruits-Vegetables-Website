<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="DAO.*"%>
<%@ page language="java" import="Form.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Search</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/stylemain.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Vegetables Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.useso.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script src="js/jquery.easydropdown.js"></script>
</head>
<body> 
<%request.setCharacterEncoding("utf-8");%>
<%
	String username=(String) session.getAttribute("user");
	if(username==null)
	{
		username="未登录用户";
	}
%>
	  <!--header-->
	<div class="header">
		<div class="container">
			<div class="header-top">			
				<div class="logo">
					<a href="Main_index.jsp"><img src="images/logo.png" alt=" " ></a>
				</div>
				<div class="search-in">
					<div class="header-grid">
						<ul>
							<li class="in-up"><a href="Contact.jsp" class="scroll">联系我们</a> <label>|</label></li>
							<li class="in-up"><a href="Login_index.jsp" class="scroll">登陆</a> <label>|</label></li>
							<li><a href="Login_index.jsp" class="scroll">注册</a> <label>|</label></li>
							<li>
									<select tabindex="4" class="dropdown" onchange="parent.location.href=options[selectedIndex].value">
									<% 
										if(username.equals("未登录用户"))
										{
									%>
										<option value="" class="label" value=""><%out.print(username);%></option>
									<%  }else{%>
										<option value="" class="label" value=""><%out.print(username);%></option>
										<option value="Exit.jsp">退出登陆</option>
									<% }%>	
									</select>
							</li>						
						</ul>
				</div>
				<div class="search-top">
					<div class="search">
					<form action="SearchProduct.action" method="get">
						<input type="text" name="search" value="search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
						<input type="submit"  value="">
					</form>
				</div>
				<%
				ShoppingCartSearchService scss=new ShoppingCartSearchService();
				int cartquantity=0;
				if(username==null)
				{
				  cartquantity=0;
				}
				else
				{
					cartquantity=scss.traverseForUserCartQuantity(username);
				%>
					<div class="cart">
					<a href="ShoppingCart.jsp" class="cart-in"> </a>
					<span><%out.print(cartquantity); %></span>
				</div>
				<%} %>
				<div class="clearfix"> </div>
				</div>
			</div>	
			<div class="clearfix"> </div>
			</div>
			<div class="header-bottom-bottom">
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
						<li ><a href="About.jsp">关于我们</a></li>
						<li><a href="Product.jsp" >优质产品</a></li>
						<li><a href="Services.jsp" > 体贴服务 </a></li>
						<li><a href="503.jsp" >每日新品</a></li>
						<li><a href="Blog.jsp" > 官方博客 </a></li>
						<li><a href="Contact.jsp" > 联系我们 </a></li>
					</ul>	
				<script>
					$("span.menu").click(function(){
						$(".top-nav ul").slideToggle(500, function(){
						});
					});
				</script>			
				</div>	
				<div class="clearfix"> </div>
				</div>
		</div>
	</div>
	<!---->
	<!---->
	<div class="banner-in">
		<div class="container">
			<h6>HOME / <span>SearchSuccess</span></h6>
		</div>
	</div>
<!---->
			<div class="container">
				<div class="product">
						
				 <ul id="filters">
						<li><span class="filter" data-filter="app">CATEGORY1</span></li>
					</ul>
					<%
							String name=  (String)session.getAttribute("search");
							ProductSearcher ps=new ProductSearcher();
							ArrayList productlist = new ArrayList();
							productlist=ps.queryProduct(name);
							System.out.println(productlist.size());
							for(int i=0;i<productlist.size();i++)
							{	
				 %>		
					<div id="portfoliolist">
					<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper ">		
							<a href="Single-<%out.print(productlist.get(i));%>.jsp" class="b-link-stripe b-animate-go  thickbox play-icon">
						  <img class="img-responsive " src="images/<%out.print(productlist.get(i));%>.jpg" alt="" />
						   
						     <ul class="social-ic">
								<li class="down"><span> </span></li>
								<li class="in-search"><span> </span></li>
							</ul>
							</a>							
						</div>
					</div>
					<% }%>
					<div class="clearfix"> </div>
					</div>					 
			<!-- Script for gallery Here -->
				<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
					<script type="text/javascript">
					$(function () {
						
						var filterList = {
						
							init: function () {
							
								// MixItUp plugin
								// http://mixitup.io
								$('#portfoliolist').mixitup({
									targetSelector: '.portfolio',
									filterSelector: '.filter',
									effects: ['fade'],
									easing: 'snap',
									// call the hover effect
									onMixEnd: filterList.hoverEffect()
								});				
							
							},
							
							hoverEffect: function () {
							
								// Simple parallax effect
								$('#portfoliolist .portfolio').hover(
									function () {
										$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
										$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
									},
									function () {
										$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
										$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
									}		
								);				
							
							}
				
						};
						
						// Run the show!
						filterList.init();
						
						
					});	
					</script>
			<!-- Gallery Script Ends -->

				</div>
			</div>
			<!---->
				<div class="map-top">
				<div class="map">
					<iframe src="map.html" frameBorder=0 height=600 width=500></iframe>
				</div>
					<div class="address">
						<h5>Address</h5>
						<p>上海市松江区文翔路2800号
							上海立信会计学院</p>
						<a href="http://www.lixin.edu.cn/" class="company">http://www.lixin.edu.cn/</a>
					</div>
				</div>
			<!--footer-->
			<div class="footer">
				<div class="container">
					 <p class="footer-grid">Copyright &copy; 2015.Earl Berg All rights reserved.  联系我:<a href="mailto:http://earl_berg@sina.com/">http://earl_berg@sina.com/</a></p>
			 	</div> 	
			</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
