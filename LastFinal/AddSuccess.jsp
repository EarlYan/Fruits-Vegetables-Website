<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="DAO.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>成功添加</title>
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
			<h6>HOME / <span>AddSuccess</span></h6>
		</div>
	</div>
		<!--content-->
		<div class="container">
			<div class="four">
				<h2>商品已成功加入购物车！</h2>
				<a href="ShoppingCart.jsp" class="btn  btn-1c">购物结算</a>
				<a href="Product.jsp" class="btn  btn-1c">继续购物</a>
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