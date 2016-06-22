<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="DAO.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>购物车</title>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.1.4.2-min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="js/Calculation.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/stylemain.css" rel="stylesheet" type="text/css"
	media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Vegetables Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--fonts-->
<link
	href='http://fonts.useso.com/css?family=Exo:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<script src="js/jquery.easydropdown.js"></script>
<script type="text/javascript" src="js/shopping.js">
	
</script>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<%
		String username = (String) session.getAttribute("user");
		if (username == null) {
			out.print("<script language='javascript'>alert('Login First');window.location.href ='Login_index.jsp';</script>");
		}
	%>
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="header-top">
				<div class="logo">
					<a href="Main_index.jsp"><img src="images/logo.png" alt=" "></a>
				</div>
				<div class="search-in">
					<div class="header-grid">
						<ul>
							<li class="in-up"><a href="Contact.jsp" class="scroll">联系我们</a>
								<label>|</label></li>
							<li class="in-up"><a href="Login_index.jsp" class="scroll">登陆</a>
								<label>|</label></li>
							<li><a href="Login_index.jsp" class="scroll">注册</a> <label>|</label></li>
							<li><select tabindex="4" class="dropdown"
								onchange="parent.location.href=options[selectedIndex].value">
									<option value="" class="label" value="">
										<%
											out.print(username);
										%>
									</option>
									<option value="Exit.jsp">退出登陆</option>
							</select></li>
						</ul>
					</div>
					<div class="search-top">
						<div class="search">
							<form action="SearchProduct.action"
								method="get">
								<input type="text" name="search" value="search"
									onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = '';}"> <input
									type="submit" value="">
							</form>
						</div>
						<%
							ShoppingCartSearchService scss = new ShoppingCartSearchService();
							int cartquantity = 0;
							if (username == null) {
								cartquantity = 0;
							} else {
								cartquantity = scss.traverseForUserCartQuantity(username);
						%>
						<div class="cart">
							<a href="#" class="cart-in"> </a> <span>
								<%
									out.print(cartquantity);
								%>
							</span>
						</div>
						<%
							}
						%>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="header-bottom-bottom">
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
						<li><a href="About.jsp">关于我们</a></li>
						<li><a href="Product.jsp">优质产品</a></li>
						<li><a href="Services.jsp"> 体贴服务 </a></li>
						<li><a href="503.jsp">每日新品</a></li>
						<li><a href="Blog.jsp"> 官方博客 </a></li>
						<li><a href="Contact.jsp"> 联系我们 </a></li>
					</ul>
					<script>
						$("span.menu").click(function() {
							$(".top-nav ul").slideToggle(500, function() {
							});
						});
					</script>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!---->
	<div class="banner-in">
		<div class="container">
			<h6>HOME / <span>ShoppingCart</span></h6>
		</div>
	</div>
	<!--content-->
	<div class="gwc" style=" margin:auto;">
		<table cellpadding="0" cellspacing="0" class="gwc_tb1">
			<tr>
				<td class="tb1_td3">商品</td>
				<td class="tb1_td4">商品类型</td>
				<td class="tb1_td5">数量</td>
				<td class="tb1_td6">单价</td>
				<td class="tb1_td7">操作</td>
			</tr>
		</table>


		<%
			ArrayList productidlist = new ArrayList();
			productidlist = scss.traverseForUserCartItemProductId(username);//查询购物车productid
			ArrayList productpricelist = new ArrayList();
			productpricelist = scss
					.traverseForUserCartItemProductPrice(username);//查询购物车price

			for (int i = 0; i < cartquantity; i++) {
				String cartproduct_id = productidlist.get(i).toString();
				GetsSingleInfoFromProduct gsifp = new GetsSingleInfoFromProduct();
				String cartproduct_name = gsifp.getSingleProductName(cartproduct_id);
				String cartproduct_type = gsifp.getSingleProductType(cartproduct_id);
				float cartproduct_price = Float.parseFloat(productpricelist.get(i).toString());
		%>
		<table cellpadding="0" cellspacing="0" class="gwc_tb2" id="tab">
			<tr>
				<td class="tb2_td2"><a
					href="Single-<%out.println(cartproduct_id);%>.jsp"><img
						src="images/<%out.println(cartproduct_id);%>.jpg" /></a></td>
				<td class="tb2_td3"><a
					href="Single-<%out.println(cartproduct_id);%>.jsp">
						<%
							out.println(cartproduct_name);
						%>
				</a></td>
				<td class="tb1_td4">
					<%
						out.println(cartproduct_type);
					%>
				</td>
				<td class="tb1_td5"><span id="min"
					style=" width:20px; height:18px;border:1px solid #ccc;"
					onclick="numDec(this)" />-</span> <input id="quantity"
					class="product_quentity" name="" type="text" value="1"
					style=" width:30px; text-align:center; border:1px solid #ccc;"
					onkeyup="keyUp()" /> <span id="add"
					style="width:20px; height:18px;border:1px solid #ccc;"
					onclick="numAdd(this)" />+</span></td>
				<td class="tb1_td6"><input id="price" class="productprice"
					style="color:#ff5500;font-size:14px; font-weight:bold;"
					value="<%=cartproduct_price%>"></td>
				<td class="tb1_td7"><a href="/LastFinal/servlet/DeleteShoppingCartItem?id=<%=cartproduct_id%>">删除</a></td>
			</tr>
		</table>
		<%
			}
		%>
		<table cellpadding="0" cellspacing="0" class="gwc_tb3">
			<tr>
				<td class="tb3_td2">已选商品 <label id="shuliang"  name="shuliang" style="color:#ff5500;font-size:14px; font-weight:bold;"></label> 件</td>
				<td class="tb3_td3">合计(不含运费):<span>￥</span><span
					style=" color:#ff5500;"><span id="totalPrice"
						style="color:#ff5500;font-size:14px; font-weight:bold;"></span></span></td>
				<td class="tb3_td4"><a href="javascript:pay();" class="jz1" id="jz1">结算</a>
			</tr>
		</table>

	</div>
	<!--footer-->
	<div class="footer">
		<div class="container">
			<p class="footer-grid">
				Copyright &copy; 2015.Earl Berg All rights reserved. 联系我:<a
					href="mailto:http://earl_berg@sina.com/">http://earl_berg@sina.com/</a>
			</p>
		</div>
	</div>

	<div style="display:none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
	<form name="payForm" action="Pay.jsp" method="post">
	   <input type="hidden" name="yingfuMoney" id="yingfuMoney"/>
	</form>
</body>
</html>