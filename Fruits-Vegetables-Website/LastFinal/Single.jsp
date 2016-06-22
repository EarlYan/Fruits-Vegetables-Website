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
	  <%--从网页名称获取到products表中的 id--%>
		<%
    	    String idName=request.getParameter("productid"); 
    	%>
    	<%--从products表中取值申明初始化类--%>
        <%GetsSingleInfoFromProduct psifp=new GetsSingleInfoFromProduct();%>
        <%--从comments表中取值申明初始化类--%>
        <%CommentsGetter cg=new CommentsGetter();%>
    	
<title><%out.print(psifp.getSingleProductName(idName));%></title>
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
	<%request.setCharacterEncoding("UTF-8");%>
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
			<h6>HOME / <span>BLOG/</span><span><%=idName%></span></h6>
		</div>
	</div>
<!---->
			<div class="container">
				<div class="single">
				<div class="blog-top-in">
					<div class="col-md-4 top-blog">
						<a href="#"><img class="img-responsive" src= "<%out.print(psifp.getSinglePhotoAddress(idName));%>" alt=" " ></a>
					</div>
					<div class="col-md-8 sed-in">
						<h4><b><%out.print(psifp.getSingleProductName(idName));%></b></h4>						
							<ul>
								<li><a href="#"><span><i></i><%out.print(psifp.getSinglePromulgator(idName)); %></span></a></li>
		  						 <li><span><i class="clock"> </i><%out.print(psifp.getSingleReleaseTime(idName)); %></span></li>		  						 	
		  						 <li><span><i class="hit"> </i><label style="font-size:40px;color:green;">Price:</label><%out.print(psifp.getSinglePrice(idName)); %></span></li>
		  					</ul>		  						
						<p><%out.print(psifp.getSingleDescription(idName));%></p>
						<% 
										if(!username.equals("未登录用户"))
										{
						%>
										<a href="/LastFinal/servlet/AddToShoppingCartServlet" class="btn  btn-1c">购买</a>
					    <% }%>
					</div>
					<div class="clearfix"> </div>
				</div>				
				<div class="comment-grid-top">
				<%String vegetable_name = psifp.getSingleProductName(idName);%>
			<h3><%out.print(cg.queryResponses(vegetable_name));%><label>Responses</label></h3>
			
				<% session.setAttribute("vegetable_name",vegetable_name);%>
			<% 
				int responses=cg.queryResponses(vegetable_name);
				for(int i=0;i<responses;i++)
				{
			%>
			<div class="comments-top-top">
				<div class="top-comment-left">
					<img class="img-responsive" src="images/co.png" alt="" />
				</div>
				<div class="top-comment-right">
					<ul>
						<li><span class="left-at"> <%out.print(cg.queryCommentsUserName(vegetable_name).get(i));%></span></li>
						<li><span class="right-at"><%out.print(cg.queryCommentsTime(vegetable_name).get(i));%></span></li>
					</ul>
				<p><%out.print(cg.queryComments(vegetable_name).get(i));%></p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<%} %>
		</div>
		<!----start-leavecomment---->
		<% GetEmailFromUser egfu=new GetEmailFromUser(); %>
		<% String email=egfu.getUserEmail(username);
		   String comment="请在此处进行评论";
		    if(username.equals("未登录用户"))
			{
				email="未获取到你的登陆信息!注意！登陆后才能提交哦!";
				comment="未获取到你的登陆信息!注意！登陆后才能提交哦!";
			}
		%>
			<div class="leave-comment">
				<h3>comments</h3>
				<div class="table-form">
					<form action="/LastFinal/servlet/CommentsSubmitServlet" method="get" name="get_comment">
				<div>
				<label>Name<span>*</span></label>
					<input type="text" value="<%out.println(username);%>" name="Name">
				</div>
				<div>
					<label>Email<span>*</span></label>
					<input type="text" value="<%out.println(email);%>" name="Email">
				</div>
				<div>
					<label>Your Comment<span>*</span></label>
					<textarea name="Comment"><%out.println(comment);%></textarea>	
				</div>
					<input type="submit" value="submit">		
				</form>
					
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
