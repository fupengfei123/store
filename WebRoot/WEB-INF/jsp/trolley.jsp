<%@ page language="java" import="java.util.*,entity.*" pageEncoding="utf-8"%>
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

<title>购物车页</title>
<style>
* {
	margin: 0;
	padding: 0;
}

#d1 {
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

.G-checkAll {
	width: 100%;
	background-color: #F1F1F1;
	line-height: 40px;
}

.G-checkAll li {
	float: left;
	list-style: none;
}

#G-select {
	width: 1200px;
	margin-left: 120px;
}

#G-select li {
	list-style: none;
}
</style>
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script>
	$(document).ready(function() {
	 
		$("#top li,#shouye li,#slide li").hover(function() {
			$(this).css("color", "red");
		}, function() {
			$(this).css("color", "black");
			$("#mianfeizhuce").css("color", "red");
		});
		$("#ButtonCar").click(function() {
			alert("Welcome to shopping trolley!");
		});
		$(".jian").click(function() {
			var x = $(this).siblings(".txt").val() - 0;
			x--;
			if (x < 1) {
				x = 1;
			}
			$(this).siblings(".txt").val(x);
		});
		$(".jia").click(function() {
			var x = $(this).siblings(".txt").val() - 0;
			x++;
			$(this).siblings(".txt").val(x);
		});

		$("#shou").click(function() {
			window.location.href = "show";
		});
		$(".del").click(function() {
			var id = $(this).data("id");
			window.location.href = "delete?id=" + id;
		});
		
		$("#checkAll").click(function() {
			if ($("#checkAll").is(":checked")) {
				$("[name='ch']").prop("checked", true);
			} else {
				$("[name='ch']").prop("checked", false);
			}
		});
		$("[name='ch']").click(function() {
			var flag = true;
			if (!$("[name='ch']").is(":checked")) {
				$("#checkAll").prop("checked", false);
			} else {
				$("[name='ch']").each(function() {
					if (!$(this).is(":checked")) {
						flag = false;
						$("#checkAll").prop("checked", false);
						return false;
					}
				});
				if (flag == true) {
					$("#checkAll").prop("checked", true);
				}
			}
		});
  	 
	});
</script>


</head>
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
	<div style="position: absolute;margin-left: 400px;margin-top: -50px;">
		<input id="ButtonCar" type="button" value="我的购物车"
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
			<li id="shou">首页</li>
			<li>京东超市</li>
			<li>全球购</li>
			<li>拍卖</li>
			<li>闪购</li>
			<li>优惠券</li>
			<li>秒杀</li>
		</ul>
	</div>
	<div class="G-checkAll">
		<input id="checkAll" type="checkbox" style="margin-left: 150px;" />全选
		<ul>
			<li style="margin-left: 320px;margin-top: -40px;">商品详情</li>
			<li style="margin-left: 550px;margin-top: -40px;">单价(元)</li>
			<li style="margin-left: 750px;margin-top: -40px;">数量</li>
			<li style="margin-left: 940px;margin-top: -40px;">小计(元)</li>
			<li style="margin-left: 1090px;margin-top: -40px;">操作</li>
		</ul>
	</div>

	<%
		List<Trolley> list = (List<Trolley>) request.getAttribute("mers");
	%>
	<div id="G-select">
		<%
			for (int i = 0; i < list.size(); i++) {
		%>
		<div style="overflow:hidden;">
			<input type="checkbox" name="ch" style="margin-left: 30px;margin-top:30px; float:left" />
			<div style="width: 100px;margin-left:80px;float:left">
				<a href="detail?id=<%=list.get(i).getMerchandise().getId()%>"><img src="<%=list.get(i).getMerchandise().getPhoto()%>"
					style="width:100px;height:150px;margin-top:20px" /></a>
			</div>
			<div style="width: 150px;margin-left: 60px;margin-top:30px;float:left">
				<%=list.get(i).getMerchandise().getDetail()%></div>
				
			<div style="font-size: 20px;margin-top:30px; float:left;"><%=list.get(i).getMerchandise().getPrice()%></div>
			
			<div style="width: 20px;height: 25px;margin-top:30px;margin-left: 130px;float:left;">
			<input class="jian" type="button" value="-" style="width: 20px;height: 25px;float:left" />
			 
			<input type="text"  class="txt" value="<%=list.get(i).getMerchandise().getCount()%>"
				style="width: 40px;height: 25px;margin-top:-25px;margin-left: 20px;float:left " />
				
			<input  class="jia" type="button" value="+" style="margin-top:-25px;margin-left: 60px; width: 20px;height: 25px;float:left" />
			</div>
			
		<div
			style="font-size: 20px;margin-left: 200px;margin-top:30px; float:left"><%=new java.text.DecimalFormat("#.00").format(list.get(i).getMerchandise().getPrice()*list.get(i).getMerchandise().getCount())%></div>
		<input class="del" data-id="<%=list.get(i).getId()%>" type="button"
			value="删除"
			style="width: 50px;height: 30px;margin-left: 100px;margin-top:30px;float:left" />
	</div>
	<%
		}
	%>

	<div style="width: 1200px;">
		<p style="color:#000;margin-left:530px;margin-top:20px;float:left;">已选择</p>
		<p style="color:#F00;margin-left:5px;margin-top:20px;float:left;" ><span  id="n" >0</span></p>
		<p style="color:#000;margin-left:5px;margin-top:20px;float:left;">件商品</p>
		<p style="color:#000;margin-left:60px;margin-top:20px;float:left;">总价：</p>
		<p style="color:#F00;margin-left:10px;margin-top:20px;float:left;"  >￥<span id="he" >0</span></p>
		<div
			style="margin-left: 950px; width: 150px;height: 80px;background-color: red;text-align: center;line-height: 80px;">
			<p style="color: #FFFFFF;font-size: 25px;">去结算</p>
		</div>
	</div>
	</div>

</body>
</html>
