<%@ page language="java" import="java.util.*,entity.*"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>书城首页</title>
<style>
* {
	margin: 0;
	padding: 0;
}

#top li {
	float: left;
	list-style: none;
	cursor: pointer;
}

li {
	list-style: none;
}

#line {
	width: 100%;
	margin-top: 60px;
	position: absolute;
	border: solid 1px #B1191A;
}

#box {
	width: 700px;
	height: 350px;
	margin-top: 60px;
	margin-left: 305px;
	position: relative;
}

#imgUl li {
	position: absolute;
}

img {
	width: 700px;
	height: 350px;
}

#slide li {
	float: left;
	font-size: 12px;
	margin-left: 6px;
	cursor: pointer;
}

#shouye li {
	float: left;
	font-size: 14px;
	margin-left: 20px;
	cursor: pointer;
}

#paihangbang li {
	font-size: 18px;
	margin-left: 20px;
}

#xiaoshuo li {
	color: #FFFFFF;
	font-size: 10px;
	margin-left: 35px;
	float: left;
	cursor: pointer;
}

#renwen li {
	color: #FFFFFF;
	font-size: 10px;
	margin-left: 35px;
	float: left;
	cursor: pointer;
}

#jingying li {
	color: #FFFFFF;
	font-size: 10px;
	margin-left: 35px;
	float: left;
	cursor: pointer;
}

#lizhi li {
	color: #FFFFFF;
	font-size: 10px;
	margin-left: 35px;
	float: left;
	cursor: pointer;
}

#jisuanji li {
	color: #FFFFFF;
	font-size: 10px;
	margin-left: 35px;
	float: left;
	cursor: pointer;
}

#iconUl {
	position: absolute;
	right: 20px;
	bottom: 20px;
}

#iconUl li {
	float: left;
	width: 20px;
	height: 20px;
	border: 1px solid #666;
	text-align: center;
	background: #ccc;
	margin-left: 5px;
	border-radius: 9px;
	font-size: 12px;
	line-height: 20px;
}

#iconUl .active {
	background: #666;
	color: #fff;
	border: 1px solid #ccc;
}

#left,#right {
	width: 100px;
	height: 350px;
	text-align: center;
	line-height: 350px;
	font-size: 150px;
	color: #666;
	position: absolute;
}

#left {
	left: 0;
}

#right {
	right: 0px;
}
</style>
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script>
	$(document).ready(
			function() {
				var imgs = $("#imgUl li");
				var icons = $("#iconUl li");
				imgs.hide();
				imgs.eq(0).show();
				var i = 0;
				$("#left,#right").hide();

				function selected() {
					imgs.fadeOut(500);
					imgs.eq(i).fadeIn(500);
					icons.removeClass("active");
					icons.eq(i).addClass("active");
				}

				function change() {
					i++;
					if (i == imgs.length) {
						i = 0;
					}
					selected();
				}
				icons.click(function() {
					i = $(this).index();
					selected();
					clearInterval(timer);
					timer = setInterval(change, 2000);
				});
				$("#box").hover(function() {
					$("#left,#right").show();
					clearInterval(timer);
				},

				function() {
					clearInterval(timer);
					$("#left,#right").hide();
					timer = setInterval(change, 2000);
				});

				$("#left a").click(function() {
					i--;
					if (i < 0) {
						i = imgs.length - 1;
					}
					selected();
				});

				$("#right a").click(function() {
					i++;
					if (i > imgs.length - 1) {
						i = 0;
					}
					selected();
				});
				var timer = setInterval(change, 2000);

				$("#top li,#slide li,#shouye li").hover(function() {
					$(this).css("color", "red");
				}, function() {
					$(this).css("color", "black");
					$("#mianfeizhuce").css("color", "red");
				});
				$("#gouwuche").click(function() {
					window.location.href = "showTrolley";
				});
				$("#show").click(function() {
					window.location.href = "show";
				});
				$("#list").click(function() {
					window.location.href = "showList";
				});
				$(".addgouwuche").click(function() {
					var count = 1;
					window.location.href = "add?id="+ $(this).parent().data("id")+"&count="+count;
				});
				$(".todetail").click(function() {
					var id = $(this).data("id");
					window.location.href = "detail?id="+id;
				});
			});
</script>
</head>

<body>
	<div id="top"
		style="background-color: #CCCCCC;width: 100%;height: 30px;height: 25px;">
		<ul style="position: absolute; margin-left: 370px;">
			<li>Hi，请登录</li>
			<li id="mianfeizhuce" style="color: red;">&nbsp;&nbsp;&nbsp;免费注册&nbsp;
				|</li>
			<li>&nbsp;&nbsp;&nbsp;我的订单&nbsp; |</li>
			<li>&nbsp;&nbsp;&nbsp;京东会员&nbsp; |</li>
			<li>&nbsp;&nbsp;&nbsp;企业采购&nbsp; |</li>
			<li>&nbsp;&nbsp;&nbsp;我的京东&nbsp; |</li>
			<li>&nbsp;&nbsp;&nbsp;手机京东&nbsp; |</li>
			<li>&nbsp;&nbsp;&nbsp;关注京东&nbsp; |</li>
			<li>&nbsp;&nbsp;&nbsp;客户服务&nbsp; |</li>
			<li>&nbsp;&nbsp;&nbsp;网站导航&nbsp; |</li>
		</ul>
	</div>
	<div>
		<img src="images/top1.png" style="width: 100%;height: 90px;" />
	</div>
	<div style="margin-left: 100px;width: 250px;height: 50px;">
		<img src="images/logo-201305.png" style="width: 250px;height: 60px;" />
	</div>
	<div
		style="position: absolute; width: 400px;height: 30px;margin-left: 520px;margin-top: -40px;">
		<input type="text"
			style="position: relative;width: 320px;height: 25px;border: solid 3px #B61D1D;" />
		<input type="button" value="搜索"
			style="position: absolute; width: 70px;height: 30px; text-align: center; background-color: #B61D1D;color: #FFF; cursor:pointer;border:#C03;" />
	</div>
	<div style="position: absolute;margin-left: 1000px;margin-top: -40px;">
		<input id="gouwuche" type="button" value="我的购物车"
			style="width:100px;height:30px;position:absolute;">

	</div>
	<div
		style="position: absolute; width: 300px;height: 20px;margin-left: 530px;margin-top: -10px;">
		<ul id="slide">
			<li>电脑</li>
			<li>Vivo手机</li>
			<li>苹果手机</li>
			<li>OPPOR9</li>
			<li>华为</li>
			<li>小米</li>
		</ul>
	</div>
	<div
		style="position: absolute; width: 650px;height: 20px;margin-left: 430px;margin-top: 35px;">
		<ul id="shouye">
			<li id="show">首页</li>
			<li>京东超市</li>
			<li>全球购</li>
			<li>拍卖</li>
			<li>闪购</li>
			<li>优惠券</li>
			<li>秒杀</li>
		</ul>
	</div>
	<div
		style="width: 200px;height: 400px;position: absolute;background-color: #B1191A;margin-top: 10px;margin-left: 100px;">
		<div>
			<ul>
				<li
					style="color: #FFFFFF; font-size: 14px;margin-left: 20px;margin-top: 20px;cursor: pointer;">全部产品分类</li>
				<li
					style="position: absolute; color: #FFFFFF; font-size: 14px;margin-left: 150px;margin-top: -15px;">↓</li>
				<br />
			</ul>
			<ul>
				<li
					style="color: #FFFFFF; font-size: 14px;margin-left: 20px;margin-top: -5px;cursor: pointer;">文学类</li>
			</ul>
			<ul id="xiaoshuo">
				<li>小说</li>
				<li>散文</li>
				<li>传记</li>
				<li>网络小说</li>
				<li>轻小说</li>
				<br />
			</ul>
			<br />
			<br />
			<ul>
				<li
					style="color: #FFFFFF; font-size: 14px;margin-left: 20px;margin-top: -5px;cursor: pointer;">人文社科</li>
			</ul>
			<ul id="renwen">
				<li>历史</li>
				<li>哲学</li>
				<li>地理</li>
			</ul>
			<br></br>
			<ul>
				<li
					style="color: #FFFFFF; font-size: 14px;margin-left: 20px;margin-top: -5px;cursor: pointer;">经营</li>
			</ul>
			<ul id="jingying">
				<li>经济</li>
				<li>管理</li>
				<li>金融</li>
			</ul>
			<br></br>
			<ul>
				<li
					style="color: #FFFFFF; font-size: 14px;margin-left: 20px;margin-top: -5px;cursor: pointer;">励志成功</li>
			</ul>
			<ul id="lizhi">
				<li>自我管控</li>
				<li>传记</li>
			</ul>
			<br></br>
			<ul>
				<li
					style="color: #FFFFFF; font-size: 14px;margin-left: 20px;margin-top: -5px;cursor: pointer;">计算机</li>
			</ul>
			<ul id="jisuanji">
				<li>Java</li>
				<li>数据库</li>
				<li>软件工程</li>
				<li>前端</li>
			</ul>
		</div>
	</div>
	<div
		style="width: 200px;height: 350px;position: absolute;background-color: #FFFFFF;margin-top: 60px;margin-left: 1000px;">
		<img src="images/championImg2.jpg" style="width: 50px;height: 50px;" />
		<p
			style="color: black; font-size: 20px;position: absolute;margin-left: 60px;margin-top: -40px;">图书畅销榜</p>
		<table
			style="width: 200px;height: 30px;text-align: center;margin-left: 10px;">
			<tr>
				<td style="border: solid 1px #CCCCCC;">总榜</td>
				<td style="border: solid 1px #CCCCCC;">文学</td>
				<td style="border: solid 1px #CCCCCC;">社科</td>
				<td style="border: solid 1px #CCCCCC;">IT</td>
			</tr>
		</table>
		<br />
		<ul id="paihangbang">
			<li>1&nbsp;&nbsp;&nbsp;计算机网络</li>
			<li>2&nbsp;&nbsp;&nbsp;数据结构</li>
			<li>3&nbsp;&nbsp;&nbsp;Java语言程序设计</li>
			<li>4&nbsp;&nbsp;&nbsp;现代操作系统</li>
			<li>5&nbsp;&nbsp;&nbsp;软件工程</li>
			<li>6&nbsp;&nbsp;&nbsp;程序员修炼之道</li>
			<li>7&nbsp;&nbsp;&nbsp;Java编程思想</li>
			<li>8&nbsp;&nbsp;&nbsp;浪潮之巅</li>
			<li>10&nbsp;&nbsp;硅谷之谜</li>
		</ul>
	</div>

	<div id="line"></div>
	<div id="box">
		<ul id="imgUl">
			<li><img src="images/1.jpg" /></li>
			<li><img src="images/2.jpg" /></li>
			<li><img src="images/3.jpg" /></li>
			<li><img src="images/4.jpg" /></li>
			<li><img src="images/5.jpg" /></li>
		</ul>

		<div id="left">
			<a>&lsaquo;</a>
		</div>
		<div id="right">
			<a>&rsaquo;</a>
		</div>

		<ul id="iconUl">
			<li class="active">1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
			<li>5</li>
		</ul>
	</div>
	<div
		style="position: absolute; width: 100%;height: 45px;line-height: 50px;background-color: #F2F2F2;">
		<h2 id="list" style="float: left;margin-left: 100px;">图书</h2>
		<p>&nbsp;&nbsp; 中华书局</p>
	</div>

	<%
		List<Merchandise> list = (List<Merchandise>) request
				.getAttribute("mers");
	%>

	<div
		style="width: 1080px;height: 700px;background-image: url(images/backgroundImg2.jpg); position: absolute;margin-left: 100px;margin-top: 45px;float: left; border: solid #CCCCCC 1px;">
		<%
			for (int i = 0; i < list.size(); i++) {
		%>
		<div data-id=<%=list.get(i).getId()%>
			style="float:left;width: 200px;height: 280px;margin-left: 40px;margin-top: 20px;">
			<img class="todetail" data-id="<%=list.get(i).getId()%>" src="<%=list.get(i).getPhoto()%>"
				style="width: 160px;height: 200px;" /><br />
			<p style="text-align:center;font-size: 14px;"><%=list.get(i).getName()%></p>
			<p style="font-size: 14px;"><%=list.get(i).getDetail()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=list.get(i).getAuthor()%></p>
			<strong style="margin-left: 60px;color: red;">￥<%=list.get(i).getPrice()%></strong>
			<br /> <input type="button" value="关注" style="margin-left: 20px" /><input
				class="addgouwuche" type="button" value="加入购物车"
				style="margin-left: 15px" />
		</div>
		<%
			}
		%>

		<div
			style="position:absolute;top:692px; width:1300px;height:550px;margin-left: -100px">
			<div
				style="position:absolute;top:10px;width:1350px;height:80px;background-color:#F1F1F1; background-image: url(images/多快好省.png);"></div>
			<div style="position:absolute;top:120px;left:130px">购物指南</div>
			<a
				style="position:absolute;top:160px;left:130px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">购物流程</a> <a
				style="position:absolute;top:180px;left:130px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-151.html">会员介绍</a> <a
				style="position:absolute;top:200px;left:130px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">生活旅行、团购</a> <a
				style="position:absolute;top:220px;left:130px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">常见问题</a> <a
				style="position:absolute;top:240px;left:130px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">大家电</a> <a
				style="position:absolute;top:260px;left:130px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">联系客服</a>

			<div style="position:absolute;top:120px;left:370px">配送方式</div>
			<a
				style="position:absolute;top:160px;left:370px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">上门自提</a> <a
				style="position:absolute;top:180px;left:370px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-151.html">211限时达</a> <a
				style="position:absolute;top:200px;left:370px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">配送服务查询</a> <a
				style="position:absolute;top:220px;left:370px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">配送费收取标准</a> <a
				style="position:absolute;top:240px;left:370px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">海外配送</a>

			<div style="position:absolute;top:120px;left:620px">支付方式</div>
			<a
				style="position:absolute;top:160px;left:620px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">货到付款</a> <a
				style="position:absolute;top:180px;left:620px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-151.html">在线支付</a> <a
				style="position:absolute;top:200px;left:620px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">分期付款</a> <a
				style="position:absolute;top:220px;left:620px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">邮局汇款</a> <a
				style="position:absolute;top:240px;left:620px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">公司转账</a>

			<div style="position:absolute;top:120px;left:850px">售后服务</div>
			<a
				style="position:absolute;top:160px;left:850px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">售后政策</a> <a
				style="position:absolute;top:180px;left:850px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-151.html">价格保护</a> <a
				style="position:absolute;top:200px;left:850px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">退款说明</a> <a
				style="position:absolute;top:220px;left:850px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">返修/退换货</a> <a
				style="position:absolute;top:240px;left:850px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">取消订单</a>

			<div style="position:absolute;top:120px;left:1010px">特色服务</div>
			<a
				style="position:absolute;top:160px;left:1010px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">夺宝岛</a> <a
				style="position:absolute;top:180px;left:1010px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-151.html">DIY装机</a> <a
				style="position:absolute;top:200px;left:1010px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">延保服务</a> <a
				style="position:absolute;top:220px;left:1010px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">京东E卡</a> <a
				style="position:absolute;top:240px;left:1010px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">京东通信</a> <a
				style="position:absolute;top:260px;left:1010px;font-size:12px;color:#000"
				href="https://help.jd.com/user/issue/list-29.html">京东JD+</a>
			<div style="width:1200px;position:absolute;left:100px;top:300px;"></div>
			<a
				style="position:absolute;left:60px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">关于我们&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:140px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">联系我们&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:220px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">联系客服&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:300px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">合作招商&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:380px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">商家帮助&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:460px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">营销中心&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:540px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">手机京东&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:620px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">友情链接&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:700px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">销售联盟&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:780px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">京东社区&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:860px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">风险监测&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:940px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">隐私政策&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:1020px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">京东公益&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:1100px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">English
				Site&nbsp;&nbsp;&nbsp;&nbsp;|</a> <a
				style="position:absolute;left:1200px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">Contact Us</a> <img
				src="images/wuwawuwa.png"
				style="width:20px;height:20px;position:absolute;top:360px;left:170px">
			<a
				style="position:absolute;left:200px;top:360px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">京公网安备
				11000002000088号&nbsp;&nbsp;|</a>
			<div
				style="position:absolute;left:410px;top:360px;font-size:12px;color:#000">京ICP证070359号&nbsp;&nbsp;|</div>
			<a
				style="position:absolute;left:540px;top:360px;font-size:12px;color:#000 "
				href="https://www.jd.com/intro/about.aspx ">互联网药品信息服务资格证编号（京）-经营性-2014-0008&nbsp;&nbsp;|</a>
			<div
				style="position:absolute;left:905px;top:360px;font-size:12px;color:#000">新出发京零
				字第大120007号</div>
			<div
				style="position:absolute;left:150px;top:400px;font-size:12px;color:#000">互联网出版许可证编号新出网证(京)字150号&nbsp;&nbsp;|</div>
			<a
				style="position:absolute;left:430px;top:400px;font-size:12px;color:#000 "
				href="https://www.jd.com/intro/about.aspx ">出版物经营许可证&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:560px;top:400px;font-size:12px;color:#000 "
				href="https://www.jd.com/intro/about.aspx ">网络文化经营许可证京网文[2014]2148-348号&nbsp;&nbsp;|</a>
			<div
				style="position:absolute;left:850px;top:400px;font-size:12px;color:#000">违法和不良信息举报电话：4006561155</div>
			<div
				style="position:absolute;left:300px;top:430px;font-size:12px;color:#000">Copyright
				© 2004-2017 京东JD.com 版权所有 | 消费者维权热线：4006067733</div> <a
				style="position:absolute;left:800px;top:430px;font-size:12px;color:#000 "
				href="https://www.jd.com/intro/about.aspx ">经营证照</a>
			<div
				style="position:absolute;left:500px;top:450px;font-size:12px;color:#000">京东旗下网站：</div>
			<a
				style="position:absolute;left:590px;top:450px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">京东钱包&nbsp;&nbsp;|</a> <a
				style="position:absolute;left:660px;top:450px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">京东云</a> <img
				src="images/1111.png"
				style="width:30px;height:20px;position:absolute;top:490px;left:270px">
			<a
				style="position:absolute;left:310px;top:480px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">经营性网站<br />备案信息</a> <img
				src="images/2222.png"
				style="width:30px;height:20px;position:absolute;top:490px;left:390px">
			<a
				style="position:absolute;left:430px;top:480px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">可信网站<br />信用评价</a> <img
				src="images/3333.png"
				style="width:30px;height:20px;position:absolute;top:490px;left:500px">
			<a
				style="position:absolute;left:550px;top:480px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">网络警察<br />提醒您</a> <img
				src="images/4444.png"
				style="width:30px;height:20px;position:absolute;top:490px;left:630px">
			<a
				style="position:absolute;left:680px;top:490px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">诚信网站</a> <img
				src="images/5555.png"
				style="width:30px;height:20px;position:absolute;top:490px;left:760px">
			<a
				style="position:absolute;left:810px;top:480px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">中国互联网<br />举报中心</a> <img
				src="images/6666.png"
				style="width:30px;height:20px;position:absolute;top:490px;left:900px">
			<a
				style="position:absolute;left:940px;top:480px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">网络举报<br />APP下载</a>
		</div>
	</div>
</body>
</html>
