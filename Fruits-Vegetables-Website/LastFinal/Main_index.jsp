<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="DAO.*" %>
<%@ page language="java" import="Form.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <head>
<title>Home</title>
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
	  <%--从products表中取值申明初始化类--%>
        <%ProductIdForName pidfn_if1=new ProductIdForName();%>
      <%--从index_benefits表中取值申明初始化类--%>
        <%GetIndexTitle git=new GetIndexTitle();%>
        <%GetIndexBenefits gib=new GetIndexBenefits();%>
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
					<form action="SearchProduct" method="get">
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
	<div class="banner">
	<!--slider-script-->
		<script src="js/responsiveslides.min.js"></script>
			<script>
				$(function () {
				  $("#slider").responsiveSlides({
					auto: true,
					speed: 500,
					namespace: "callbacks",
					pager: true,
				  });
				});
			</script>
			<!--//slider-script-->
				<!-- Slideshow 4 -->
			    <div  id="top" class="callbacks_container">
			      <ul class="rslides" id="slider">
			        <li>
			          <img src="images/banner.jpg" alt="" />
					  <div class="banner-matter">
						<div class="price">
						  <h2><%out.print(git.getIndexTitle(1));%></h2>
						  </div>
							<div class="banner-para">							
								<p><%out.print(gib.getIndexBenefits(1));%></p>
							</div>
					  </div>
			        </li>
			        <li>
			          <img src="images/banner2.jpg" alt="" />
					  <div class="banner-matter">
						 <div class="price">
						  <h2><%out.print(git.getIndexTitle(2));%></h2>
						  </div>
							<div class="banner-para">							
								<p><%out.print(gib.getIndexBenefits(2));%></p>
							</div>
					  </div>
			        </li>
			        <li>
			          <img src="images/Cherry.jpg" alt="" />
					  <div class="banner-matter">
						 <div class="price">
						  <h2><%out.print(git.getIndexTitle(3));%></h2>
						  </div>
							<div class="banner-para">
								
								<p><%out.print(gib.getIndexBenefits(3));%></p>
							</div>
					  </div>
			        </li>
			      </ul>
			    </div>
			</div>				
			<!-- //slider-->
			<!--content-->
			<div class="content">
				<div class="container">
				<div class="top-content">
					<div class="content-top">
						<div class="col-md-3 look">
							<h4><a href="Single.jsp?productid=if1"><%out.println(pidfn_if1.queryForName("if1"));%> </a></h4>
							<a href="Single.jsp?productid=if1"><img class="img-responsive" src="images/if1(little).jpg" alt=" " ></a>
							<p><%ProductIdForBenefits pifb_if1=new ProductIdForBenefits();out.println(pifb_if1.queryForBenefits("if1"));%></p>
							<a href="Single.jsp?productid=if1" class="btn  btn-1c">Learn More</a>
						</div>
						<div class="col-md-3 look">
							<h4><a href="Single.jsp?productid=if2"><%ProductIdForName pidfn_if2=new ProductIdForName();out.println(pidfn_if2.queryForName("if2"));%></a></h4>
							<a href="Single.jsp?productid=if2"><img class="img-responsive" src="images/if2(little).jpg" alt=" " ></a>
							<p><%ProductIdForBenefits pifb_if2=new ProductIdForBenefits();out.println(pifb_if2.queryForBenefits("if2"));%></p>
							<a href="Single.jsp?productid=if2" class="btn  btn-1c">Learn More</a>
						</div>
						<div class="col-md-3 look">
							<h4><a href="Single.jsp?productid=if3"><%ProductIdForName pidfn_if3=new ProductIdForName();out.println(pidfn_if3.queryForName("if3"));%></a></h4>
							<a href="Single.jsp?productid=if3"><img class="img-responsive" src="images/if3(little).jpg" alt=" " ></a>
							<p><%ProductIdForBenefits pifb_if3=new ProductIdForBenefits();out.println(pifb_if3.queryForBenefits("if3"));%></p>
							<a href="Single.jsp?productid=if3" class="btn  btn-1c">Learn More</a>
						</div>
						<div class="col-md-3 look">
							<h4><a href="Single.jsp?productid=if4"><%ProductIdForName pidfn_if4=new ProductIdForName();out.println(pidfn_if4.queryForName("if4"));%></a></h4>
							<a href="Single.jsp?productid=if4"><img class="img-responsive" src="images/if4(little).jpg" alt=" " ></a>
							<p><%ProductIdForBenefits pifb_if4=new ProductIdForBenefits();out.println(pifb_if4.queryForBenefits("if4"));%></p>
							<a href="Single.jsp?productid=if4" class="btn  btn-1c">Learn More</a>
						</div>
						<div class="clearfix"> </div>
						</div>			
						<div class="content-top">
						<div class="col-md-3 look">
							<h4><a href="Single.jsp?productid=if5"><%ProductIdForName pidfn_if5=new ProductIdForName();out.println(pidfn_if5.queryForName("if5"));%></a></h4>
							<a href="Single.jsp?productid=if5"><img class="img-responsive" src="images/if5(little).jpg" alt=" " ></a>
							<p><%ProductIdForBenefits pifb_if5=new ProductIdForBenefits();out.println(pifb_if5.queryForBenefits("if5"));%></p>
							<a href="Single.jsp?productid=if5" class="btn  btn-1c">Learn More</a>
						</div>
						<div class="col-md-3 look">
							<h4><a href="Single.jsp?productid=if6"><%ProductIdForName pidfn_if6=new ProductIdForName();out.println(pidfn_if6.queryForName("if6"));%></a></h4>
							<a href="Single.jsp?productid=if6"><img class="img-responsive" src="images/if6(little).jpg" alt=" " ></a>
							<p><%ProductIdForBenefits pifb_if6=new ProductIdForBenefits();out.println(pifb_if6.queryForBenefits("if6"));%></p>
							<a href="Single.jsp?productid=if6" class="btn  btn-1c">Learn More</a>
						</div>
						<div class="col-md-3 look">
							<h4><a href="Single.jsp?productid=df1"><%ProductIdForName pidfn_df1=new ProductIdForName();out.println(pidfn_df1.queryForName("df1"));%></a></h4>
							<a href="Single.jsp?productid=df1"><img class="img-responsive" src="images/df1(little).jpg" alt=" " ></a>
							<p><%ProductIdForBenefits pifb_df1=new ProductIdForBenefits();out.println(pifb_df1.queryForBenefits("df1"));%></p>
							<a href="Single.jsp?productid=df1" class="btn  btn-1c">Learn More</a>
						</div>
						<div class="col-md-3 look">
							<h4><a href="Single.jsp?productid=df2"><%ProductIdForName pidfn_df2=new ProductIdForName();out.println(pidfn_df2.queryForName("df2"));%></a></h4>
							<a href="Single.jsp?productid=df2"><img class="img-responsive" src="images/df2(little).jpg" alt=" " ></a>
							<p><%ProductIdForBenefits pifb_df2=new ProductIdForBenefits();out.println(pifb_df2.queryForBenefits("df2"));%></p>
							<a href="Single.jsp?productid=df2" class="btn  btn-1c">Learn More</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					</div>
				</div>
				<!---->
				<!---->
<!---->
					 <div class="content-bottom-top">
						<div class="wmuSlider example1">
							   <div class="wmuSliderWrapper">
							   <%
							   		GetColdKnowledge gck=new GetColdKnowledge();
									ArrayList coldknowledgelist = new ArrayList();
									coldknowledgelist=gck.getColdKnowledge();
									for(int i=0;i<coldknowledgelist.size();i++)
									{			
		
							   %>
								   <article style="position: absolute; width: 100%; opacity: 0;">
								   	<div class="content-bottom">
										<div class="container">
											<span class="corn corn-in"> </span>
											<h3>你知道么?</h3>
											<p><%out.println(coldknowledgelist.get(i));%></p>
										</div>
									</div>
								 	</article>
								 	<%} %>
								 </div>
				            <script src="js/jquery.wmuSlider.js"></script> 
							  <script>
				       			$('.example1').wmuSlider();         
				   		     </script> 	           	         
					</div>
					</div>
<!---->
<!---
				<div class="content-bottom">
					<div class="container">
						<span class="corn"> </span>
						<h3>Do you Know  ?</h3>
						<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, </p>
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
						<a href="mailto:http://www.lixin.edu.cn/" class="company">http://www.lixin.edu.cn/</a>
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