<%@page import="entity.Merchandise"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>详情页</title>
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

li {
	list-style: none;
}

#box {
	width: 200px;
	height: 300px;
	box-shadow: 0 0 20px #666;
	position: relative;
}

#imgUl li {
	position: absolute;
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
	float: left;
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
	width: 80px;
	height: 200px;
	text-align: center;
	line-height: 300px;
	font-size: 100px;
	color: #B1191A;
	position: absolute;
}

#left {
	left: 0;
}

#right {
	right: 0px;
}
#bigPhoto {
	display: none;
	position: absolute;
	width: 100px;
	height: 100px;
}
</style>
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#gouwuche").click(function() {
			window.location.href = "showTrolley";
		});
		$("#begin").click(function() {
			window.location.href = "show";
		});
		
		$(".jiaru").click(function() {
			var id = $(this).data("id");
			var count =$("#txt").val();
			alert(id);
			alert(count);
			window.location.href = "addByDetail?id=" + id+ "&count=" + count;
						});

				$("#top li,#shouye li,#slide li").hover(function() {
					$(this).css("color", "red");
				}, function() {
					$(this).css("color", "black");
					$("#mianfeizhuce").css("color", "red");
				});
				$("#jia").click(function() {
					var x = $("#txt").val() - 0;
					x++;
					$("#txt").val(x);
				});
				$("#jian").click(function() {
					var x = $("#txt").val() - 0;
					x--;
					if (x < 1) {
						x = 1;
					}
					$("#txt").val(x);
				});
				
				$(".photo").mouseover(function(event) {
					$("#bigPhoto").show();
					$("#bigPhoto").children().attr("src",$(this).attr("src"));
					$("#bigPhoto").offset({
						left : event.pageX - 80,
						top : event.pageY - 80,
					});
				});
				$(".photo").mouseout(function() {
					$("#bigPhoto").hide();
				});
				
			});
</script>
</head>
<%
			Merchandise mer = (Merchandise) request.getAttribute("mer");
		%>
<body>
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
	<div style="position: absolute;margin-left: 600px;margin-top: -50px;">
		<input type="button" id="gouwuche" value="我的购物车"
			style="position: absolute;width:100px;height:30px;left:400px">
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
			<li id="begin">首页</li>
			<li>京东超市</li>
			<li>全球购</li>
			<li>拍卖</li>
			<li>闪购</li>
			<li>优惠券</li>
			<li>秒杀</li>
		</ul>
	</div>
	<div
		style="width: 600px;height: 45px;line-height: 50px;margin-left: 120px;margin-top: 5px;line-height: 45px; background-color: #F2F2F2;">
		<h2 style="float: left;">图书</h2>
		<p>&nbsp;&nbsp;
			小说&nbsp;&nbsp;&nbsp;&nbsp;情感/家庭/婚姻&nbsp;&nbsp;&nbsp;&nbsp;博集天卷&nbsp;&nbsp;&nbsp;&nbsp;好吗好吗(京东爱你！)</p>
	</div>
	
	<div
		style="width: 1200px;height: 450px;margin-left: 120px;margin-top: 5px;border: solid 1px #CCCCCC;">
		
		<div
			style="width:150px;height:180px;float:left;margin-left: 75px;margin-top:40px">
			<img class="photo" src="<%=mer.getPhoto()%>">
		</div>
		<div
			style="width: 800px;height: 100px;margin-left: 340px;margin-top:40px">
			<h3><%=mer.getDetail()%></h3>
			<p style="margin-left: 500px;"><%=mer.getAuthor()%>著
			</p>
		</div>
		<div
			style="width: 800px;height: 30px;margin-left: 340px;background-color: #F2F2F1;">
			<div style="float: left;list-style: none;line-height: 30px;">京东价：</div>
			<div style="float: left;list-style: none;font-size: 25px;color: red;">
				￥<%=mer.getPrice()%></div>
		</div>
		<div
			style="width: 800px;height: 100px;margin-left: 340px;margin-top: 10px;">
			<div style="list-style: none;line-height: 30px;">排&nbsp;&nbsp;名：&nbsp;&nbsp;自营&nbsp;&nbsp;小说销量榜&nbsp;&nbsp;第1位</div>
			<div style="list-style: none;">服&nbsp;&nbsp;务：&nbsp;&nbsp;由&nbsp;京东&nbsp;发货，并提供售后服务。现在至明天16:00前完成下单，预计两天即可送达</div>
			<div style="list-style: none;line-height: 30px;">提&nbsp;&nbsp;示：&nbsp;&nbsp;支持7天无理由退货</div>
		</div>
		
		
		<div
			style="width: 300px;height: 30px;margin-top: 30px;margin-left: 50px;font-size: 10px;">
			<ul style="list-style: none;">
				<li>商品编号：11999374&nbsp;&nbsp;&nbsp;&nbsp;关注商品&nbsp;&nbsp;&nbsp;&nbsp;分享</li>
			</ul>
		</div>
		<div style="width: 200px;height: 50px;margin-left: 400px;">
			<input id="txt" type="text" value="1"
				style="width: 50px;height: 30px;"> <input id="jia"
				type="button" value="+"
				style="position: absolute; width: 15px;height: 15px;margin-left: -5px;" />
			<input id="jian" type="button" value="-"
				style="position: absolute; width: 15px;height: 15px;margin-left: -5px;margin-top: 15px;" />
			<input class="jiaru" data-id="<%=mer.getId()%>" type="button" value="加入购物车"
				style="width: 100px;height: 30px;margin-left: 20px; text-align: center; background-color: #B61D1D;color: #FFF; cursor:pointer;border:#C03;" />
		</div>
	</div>

</body>
</html>
