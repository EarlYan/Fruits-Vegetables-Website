<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" href="css/style1.css" type="text/css" media="screen"/>
		<script type="text/javascript" src="http://libs.useso.com/js/jquery/1.4.2/jquery.min.js"></script>
        <script type="text/javascript" src="sliding.form.js"></script>
    </head>
    <style>
        span.reference{
            position:fixed;
            left:5px;
            top:5px;
            font-size:10px;
            text-shadow:1px 1px 1px #fff;
        }
        span.reference a{
            color:#555;
            text-decoration:none;
			text-transform:uppercase;
        }
        span.reference a:hover{
            color:#000;
            
        }
        h1{
            color:#ccc;
            font-size:36px;
            text-shadow:1px 1px 1px #fff;
            padding:20px;
        }
    </style>
    <body>
    	<%request.setCharacterEncoding("utf-8");%>
    	<% 
    		String username=(String) session.getAttribute("user");
    		if(username==null)
    		{
    			out.print("<script language='javascript'>alert('Please Login First!');window.location.href='Login_index.jsp';</script>");
    		}
    	%>
        <div id="content">
            <h1>Detailed Information</h1>
            <div id="wrapper">
                <div id="steps">
                    <form id="formElem" name="formElem" action="RegistDetail.action" method="post">
                        <fieldset class="step">
                            <legend>Basic Info</legend>
                            <p>
                                <label for="nickname">昵称/Nick Name</label>
                                <input id="nickname" name="nickname" />
                            </p>
                            <p>
                                <label for="phone">电话号码/Phone</label>
                                <input id="phone" name="phone" placeholder="e.g. +351215555555" type="tel" AUTOCOMPLETE=OFF />
                            </p>
                            <p>
                                <label for="sex">性别/Sex</label>
                                <select id="sex" name="sex" type="sex" AUTOCOMPLETE=OFF />
								  <option value="man">男/Man</option>
								  <option value="woman">女/Woman</option>
								</select>
                            </p>
                        </fieldset>
                        <fieldset class="step">
                            <legend>Personal Details</legend>
                            <p>
                                <label for="fullname">真实姓名/Full Name</label>
                                <input id="fullname" name="fullname" type="text" AUTOCOMPLETE=OFF />
                            </p>
                            <p>
                                <label for="country">国家/Country</label>
                                <input id="country" name="country" type="text" AUTOCOMPLETE=OFF />
                            </p>
                            <p>
                                <label for="qqnumber">QQ帐号/QQ Number</label>
                                <input id="qqnumber" name="qqnumber" AUTOCOMPLETE=OFF />
                            </p>
                            <p>
                                <label for="interest">个人爱好/Interset</label>
                                <input id="interest" name="interest" placeholder="e.g. Jogging,Mountaineering" type="text" AUTOCOMPLETE=OFF />
                            </p>
                        </fieldset>
                        <fieldset class="step">
                            <legend>Career</legend>
                            <p>
                                <label for="career">职业/Career</label>
                                <input id="career" name="career" type="text" AUTOCOMPLETE=OFF />
                            </p>
                            <p>
                                <label for="companyname">公司/Company Name</label>
                                <input id="companyname" name="companyname" type="text" AUTOCOMPLETE=OFF />
                            </p>
                            <p>
                                <label for="position">公司职位/Position</label>
                                <input id="position" name="position" type="text" AUTOCOMPLETE=OFF />
                            </p>
                            <p>
                                <label for="education">学历/Education</label>
                                <select id="education" name="education" AUTOCOMPLETE=OFF />
								  <option value="elementary">小学及以下/Elementary School Graduation Degree</option>
								  <option value="junior">初中/Junior School Graduation Degree</option>
								  <option value="high">高中/High School Graduation Degree</option>
								  <option value="technical">中专/Technical Secondary School Degree</option>
								  <option value="associate">大专/Associate Degree</option>
								  <option value="bachelor">本科/Bachelor Degree</option>
								  <option value="master">研究生/Master Degree</option>
								  <option value="doctor">博士及以上/Doctor Degree</option>
								</select>
                            </p>
                        </fieldset>
						<fieldset class="step">
                            <legend>Confirm</legend>
							<p>
								如果所有的步骤都有一个绿色复选标记图标。
								说明以上信息一切都是正确填写。
								红色标记图标表示一些字段丢失或填写无效数据。
								在这最后一步，用户可以确认提交这些信息。
							</p>
                            <p class="submit">
                                <button id="registerButton" type="submit">Register</button>
                            </p>
                        </fieldset>
                    </form>
                </div>
                <div id="navigation" style="display:none;">
                    <ul>
                        <li class="selected">
                            <a href="#">Basic Info</a>
                        </li>
                        <li>
                            <a href="#">Personal Details</a>
                        </li>
                        <li>
                            <a href="#">Career</a>
                        </li>
						<li>
                            <a href="#">Confirm</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>