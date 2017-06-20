<%@page import="entity.Merchandise"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>商品列表页</title>
<style>
* {
	margin: 0;
	padding: 0;
}

#d1 {
	position: absolute;
	width: 100%;
	height: 20px;
	background-color: #F1F1F1;
	line-height: 20px;
	cursor: pointer;
}

#line {
	width: 100%;
	position: absolute;
	border: solid 1px #B1191A;
}

#slide li {
	float: left;
	font-size: 12px;
	margin-left: 6px;
	list-style: none;
	cursor: pointer;
}

#shouye li {
	float: left;
	font-size: 18px;
	margin-left: 40px;
	list-style: none;
	cursor: pointer;
}

#delfl li {
	float: left;
}

.pagination li {
	list-style: none;
	float: left;
}
</style>
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#gouwuche").click(function() {
			window.location.href = "showTroller";
		});
		$("#shouye").click(function() {
			window.location.href = "show";
		});
		$("#list").click(function() {
			window.location.href = "showList";
		});
	});
</script>
</head>
<body>
	<%
		List<Merchandise> list = (List<Merchandise>) request
				.getAttribute("mers");
	%>
	<div id="d1">
		<div style="margin-left: 100px;">送至：</div>
		<div style="margin-left: 150px;margin-top: -20px;">
			<select style="width: 60px;">
				<option>北京</option>
				<option>上海</option>
				<option>天津</option>
				<option>重庆</option>
				<option>南京</option>
				<option>成都</option>
				<option>青岛</option>
				<option>济南</option>
				<option>天水</option>
			</select>
		</div>
		<div id="top">
			<ul id="delfl"
				style="margin-left: 370px;margin-top: -20px; list-style: none;">
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
	</div>
	<div>
		<img src="images/top1.png" style="width: 100%;height: 90px;" />
	</div>

	<div
		style="margin-left: 120px;margin-top: 10px;width: 250px;height: 50px;">
		<img src="images/logo-201305.png" style="width: 250px;height: 50px;" />
	</div>
	<div
		style="position: absolute; width: 400px;height: 30px;margin-left: 520px;margin-top: -50px;">
		<input type="text"
			style="position: relative;width: 320px;height: 25px;border: solid 3px #B61D1D;" />
		<input type="button" value="搜索"
			style="width: 70px;height: 30px; text-align: center; background-color: #B61D1D;color: #FFF; cursor:pointer;border:#C03;" />
	</div>
	<div style="position: absolute;margin-left: 400px;margin-top: -50px;">
		<input id="gouwuche" type="button" value="我的购物车>"
			style="width:100px;height:30px;position:absolute;left:600px;">

	</div>
	<div
		style="width: 200px;height: 50px;background-color: red;margin-left: 120px;">
		<ul>
			<li
				style="list-style: none;color: #FFFFFF;text-align: center;line-height: 50px;cursor: pointer;">全部商品分类</li>
		</ul>
	</div>
	<div id="line"></div>
	<div
		style="position: absolute; width: 400px;height: 20px;margin-left: 520px;margin-top: -70px;">
		<ul id="slide">
			<li>暑期满减</li>
			<li>TED</li>
			<li>别生气</li>
			<li>二手时间</li>
			<li>开学季</li>
			<li>200减100</li>
		</ul>
	</div>
	<div
		style="position: absolute; width: 650px;height: 20px;margin-left: 330px;margin-top: -30px;">
		<ul id="shouye">
			<li id="shouye">首页</li>
			<li>京东超市</li>
			<li>全球购</li>
			<li>拍卖</li>
			<li>闪购</li>
			<li>优惠券</li>
			<li>秒杀</li>
		</ul>
	</div>
	<div>
		<div
			style="width: 100%;height: 45px;line-height: 50px;line-height: 45px; background-color: #F2F2F2;">
			<h2 id="list" style="float: left;margin-left: 120px;">图书</h2>
			<p>&nbsp;&nbsp; 中华书局</p>
		</div>
		<div
			style="background-image: url(images/backgroundImg2.jpg); width: 1000px;height: 700px;margin-left: 120px;border: solid 1px #CCCCCC;">
			<%
				for (int i = 0; i < list.size(); i++) {
			%>
			<div
				style="float:left;width: 200px;height: 280px;margin-left: 40px;margin-top: 20px;">
				<img src="<%=list.get(i).getPhoto()%>"
					style="width: 160px;height: 200px;" /><br />
				<p style="text-align:center;font-size: 14px;"><%=list.get(i).getName()%></p>
				<p style="font-size: 14px;"><%=list.get(i).getDetail()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=list.get(i).getAuthor()%></p>
				<strong style="margin-left: 60px;color: red;">￥<%=list.get(i).getPrice()%></strong>
			</div>
			<%
				}
			%>
			<%
				int ye = (Integer) request.getAttribute("page");
				int maxPage = (Integer) request.getAttribute("maxPage");
			%>
			<div style="margin-top:630px;margin-left:400px">
				<ul class="pagination">

					<li><a href="showPage">首页</a></li>

					<li <%if (ye <= 1) {%> class="disabled" <%}%>><a
						href="showPage=<%=ye - 1%>">《上一页</a></li>

					<%
						int end = ye + 8;
						int begin = ye;
						if (ye + 8 >= maxPage) {
							end = maxPage;
							begin = end;
						}

						for (int i = begin; i <= end; i++) {
					%>
					<li <%if (ye == i) {%> class="active" <%}%>><a
						href="showPage=<%=i%>" style="width:38px"><%=i%></a>
					</li>
					<%
						}
					%>
					<li <%if (ye >= maxPage) {%> class="disabled" <%}%>><a
						href="showPage=<%=ye + 1%>">下一页》</a>
					</li>
					<li><a href="showPage=<%=maxPage%>">尾页</a></li>
				</ul>
			</div>
		</div>
		<div id="last"
			style="position:absolute; width:100%;height:550px;margin-top: -10px;">
			<div>
				<img src="images/多快好省.png" />
			</div>
				<div style="position:absolute;top:120px;left:180px;list-style: none;">购物指南</div>
				<a
					style="position:absolute;top:160px;left:180px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">购物流程</a>
				<a
					style="position:absolute;top:180px;left:180px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-151.html">会员介绍</a>
				<a
					style="position:absolute;top:200px;left:180px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">生活旅行、团购</a>
				<a
					style="position:absolute;top:220px;left:180px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">常见问题</a>
				<a
					style="position:absolute;top:240px;left:180px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">大家电</a>
				<a
					style="position:absolute;top:260px;left:180px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">联系客服</a>
				<div style="position:absolute;top:120px;left:420px;list-style: none;">配送方式</div>
				<a
					style="position:absolute;top:160px;left:420px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">上门自提</a>
				<a
					style="position:absolute;top:180px;left:420px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-151.html">211限时达</a>
				<a
					style="position:absolute;top:200px;left:420px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">配送服务查询</a>
				<a
					style="position:absolute;top:220px;left:420px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">配送费收取标准</a>
				<a
					style="position:absolute;top:240px;left:420px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">海外配送</a>
				<div style="position:absolute;top:120px;left:700px;list-style: none;">支付方式</div>
				<a
					style="position:absolute;top:160px;left:700px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">货到付款</a>
				<a
					style="position:absolute;top:180px;left:700px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-151.html">在线支付</a>
				<a
					style="position:absolute;top:200px;left:700px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">分期付款</a>
				<a
					style="position:absolute;top:220px;left:700px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">邮局汇款</a>
				<a
					style="position:absolute;top:240px;left:700px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">公司转账</a>
				<div style="position:absolute;top:120px;left:950px;list-style: none;">售后服务</div>
				<a
					style="position:absolute;top:160px;left:950px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">售后政策</a>
				<a
					style="position:absolute;top:180px;left:950px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-151.html">价格保护</a>
				<a
					style="position:absolute;top:200px;left:950px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">退款说明</a>
				<a
					style="position:absolute;top:220px;left:950px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">返修/退换货</a>
				<a
					style="position:absolute;top:240px;left:950px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">取消订单</a>
				<div
					style="position:absolute;top:120px;left:1180px;list-style: none;">特色服务</div>
				<a
					style="position:absolute;top:160px;left:1180px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">夺宝岛</a>
				<a
					style="position:absolute;top:180px;left:1180px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-151.html">DIY装机</a>
				<a
					style="position:absolute;top:200px;left:1180px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">延保服务</a>
				<a
					style="position:absolute;top:220px;left:1180px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">京东E卡</a>
				<a
					style="position:absolute;top:240px;left:1180px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">京东通信</a>
				<a
					style="position:absolute;top:260px;left:1180px;font-size:12px;color:#000"
					href="https://help.jd.com/user/issue/list-29.html">京东JD+</a>
			<div style="width:1200px;position:absolute;left:100px;top:300px;"></div>
			<a
				style="position:absolute;left:110px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">关于我们&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:190px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">联系我们&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:270px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">联系客服&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:350px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">合作招商&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:430px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">商家帮助&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:510px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">营销中心&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:590px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">手机京东&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:670px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">友情链接&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:750px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">销售联盟&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:830px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">京东社区&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:910px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">风险监测&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:990px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">隐私政策&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:1070px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">京东公益&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:1150px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">English
				Site&nbsp;&nbsp;&nbsp;&nbsp;|</a> <a
				style="position:absolute;left:1250px;top:320px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">Contact Us</a> <img
				src="images/wuwawuwa.png"
				style="width:20px;height:20px;position:absolute;top:360px;left:250px">
			<a
				style="position:absolute;left:280px;top:360px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">京公网安备
				11000002000088号&nbsp;&nbsp;|</a>
			<div
				style="list-style: none;position:absolute;left:490px;top:360px;font-size:12px;color:#000">京ICP证070359号&nbsp;&nbsp;|</div>
			<a
				style="position:absolute;left:620px;top:360px;font-size:12px;color:#000 "
				href="https://www.jd.com/intro/about.aspx ">互联网药品信息服务资格证编号（京）-经营性-2014-0008&nbsp;&nbsp;|</a>
			<div
				style="list-style: none;position:absolute;left:985px;top:360px;font-size:12px;color:#000 ">新出发京零
				字第大120007号</div>
			<div
				style="list-style: none; position:absolute;left:230px;top:400px;font-size:12px;color:#000">互联网出版许可证编号新出网证(京)字150号&nbsp;&nbsp;|</div>
			<a
				style="position:absolute;left:510px;top:400px;font-size:12px;color:#000 "
				href="https://www.jd.com/intro/about.aspx ">出版物经营许可证&nbsp;&nbsp;|</a>
			<a
				style="position:absolute;left:635px;top:400px;font-size:12px;color:#000 "
				href="https://www.jd.com/intro/about.aspx ">网络文化经营许可证京网文[2014]2148-348号&nbsp;&nbsp;|</a>
			<div
				style="list-style: none;position:absolute;left:930px;top:400px;font-size:12px;color:#000 ">违法和不良信息举报电话：4006561155</div>
			<div
				style="list-style: none;position:absolute;left:430px;top:430px;font-size:12px;color:#000">Copyright
				© 2004-2017 京东JD.com 版权所有 | 消费者维权热线：4006067733</div> <a
				style="position:absolute;left:800px;top:460px;font-size:12px;color:#000 "
				href="https://www.jd.com/intro/about.aspx ">经营证照</a>
			<div
				style="list-style: none;position:absolute;left:550px;top:450px;font-size:12px;color:#000 ">京东旗下网站：</div>
			<a
				style="position:absolute;left:650px;top:450px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">京东钱包&nbsp;&nbsp;|</a> <a
				style="position:absolute;left:720px;top:450px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">京东云</a> <img
				src="images/1111.png"
				style="width:30px;height:20px;position:absolute;top:490px;left:340px">
			<a
				style="position:absolute;left:380px;top:480px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">经营性网站<br />备案信息</a> <img
				src="images/2222.png"
				style="width:30px;height:20px;position:absolute;top:490px;left:460px">
			<a
				style="position:absolute;left:500px;top:480px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">可信网站<br />信用评价</a> <img
				src="images/3333.png"
				style="width:30px;height:20px;position:absolute;top:490px;left:570px">
			<a
				style="position:absolute;left:620px;top:480px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">网络警察<br />提醒您</a> <img
				src="images/4444.png"
				style="width:30px;height:20px;position:absolute;top:490px;left:700px">
			<a
				style="position:absolute;left:750px;top:490px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">诚信网站</a> <img
				src="images/5555.png"
				style="width:30px;height:20px;position:absolute;top:490px;left:830px">
			<a
				style="position:absolute;left:880px;top:480px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">中国互联网<br />举报中心</a> <img
				src="images/6666.png"
				style="width:30px;height:20px;position:absolute;top:490px;left:970px">
			<a
				style="position:absolute;left:1010px;top:480px;font-size:12px;color:#000"
				href="https://www.jd.com/intro/about.aspx">网络举报<br />APP下载</a>
		</div>
	</div>
</body>
</html>
