<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="DAO.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Services</title>
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
	<div class="banner-in">
		<div class="container">
			<h6>HOME / <span>SERVICES</span></h6>
		</div>
	</div>
<!---->
			<div class="container">
				<div class="services">				
					<div class="service-grid">
					<h3>感谢顾客对我们的信任</h3>
						<div class="col-md-4 grid-service">
							<a href="Product.jsp"><img class="img-responsive" src="images/se1.jpg" alt=" " ></a>
							<h4><a href="Product.jsp">我们的产品来自全球各地</a></h4>
							<p>我们的果园和农场遍布全球，从最优质的产地提供我们的产品</p>
							
						</div>
						<div class="col-md-4 grid-service">
							<a href="Product.jsp"><img class="img-responsive" src="images/se.jpg" alt=" " ></a>
							<h4><a href="Product.jsp">我们只出售优秀的产品</a></h4>
							<p>每一种蔬果都由我们的工作人员精挑细选过，到您手上的是最优质，最新鲜的蔬果！</p>
							
						</div>
						<div class="col-md-4 grid-service">
							<a href="Product.jsp"><img class="img-responsive" src="images/se2.jpg" alt=" " ></a>
							<h4><a href="Product.jsp">自动化的种植和收割</a></h4>
							<p>先进的自动化种植和收割技术，科学的产能，精确的计量，确保我们的产品和普通的产品不同</p>
							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="service-bottom">
						<div class="col-md-8 service-top">
							<h3>我们的配送服务承诺</h3>
							<div class=" service-top-bottom">
								<div class="col-md-6 ser-in">
									<i class="social"> </i>
									<div class="service-on">
										<h4><a href="single.html">专业的配送</a></h4>
										<p>与时俱进 鲜果速达</p>
										
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="col-md-6 ser-in">
									<i class="social social-in"> </i>
									<div class="service-on">
										<h4><a href="single.html">货到付款</a></h4>
										<p>便捷支付 多种途径</p>
										
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class=" service-top-bottom">
								<div class="col-md-6 ser-in">
									<i class="social social-on"> </i>
									<div class="service-on">
										<h4><a href="single.html">自建物流 </a></h4>
										<p>专属物流 全程把控</p>
									
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="col-md-6 ser-in">
									<i class="social social-at"> </i>
									<div class="service-on">
										<h4><a href="single.html">48小时退换货</a></h4>
										<p>专属服务 帮您解答</p>
										
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="col-md-4 service-top">
							<h3>我们的供应商</h3>
						<ul>
							<li><a href="single.html"><span> </span>国产水果供应商</a></li>
							<li><a href="single.html"><span> </span>国产蔬菜供应商</a></li>
							<li><a href="single.html"><span> </span>进口水果供应商</a></li>
							<li><a href="single.html"><span> </span>进口蔬菜供应商</a></li>
							
						</ul>

						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
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
