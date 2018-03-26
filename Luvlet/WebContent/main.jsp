<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale = "1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String)session.getAttribute("userID");		
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>	
			</button>
			<a class="navbar-brand" href="main.jsp">JSP Web Site</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">main</a></li>
				<li><a href="bbs.jsp">BBS</a></li>
			</ul>
			<%
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Connect<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">SignIn</a></li>
						<li><a href="join.jsp">Join</a></li>	
					</ul>
				</li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">LogOut</a></li>
					</ul>
				</li>
			</ul>
			<% 
				}
			%>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h1><center>SCL-90-R</center></h1>
			<p>◉ 지난 7일 동안(오늘을 포함해서) 아래 문제 때문에 얼마나 괴로워했는지를 가장 잘 나타낸 것 하나를 골라서 ( V )표해주십시오. 
			전혀(0점), 약간 (1점), 웬만큼 (2점), 꽤 (3점), 아주 (4점)</p>
			<form name="surveyresult" action="resultAction.jsp">
				<p>1. 머리가 아프다 <input type="radio" name="survey" value="never">
							<input type="radio" name="survey" value="little">
							<input type="radio" name="survey" value="alittle">
							<input type="radio" name="survey" value="usually">
							<input type="radio" name="survey" value="frequent"></p>
							
				<input type="submit" class="btn btn-primary pull-right" value="결과보기">
			
			</form>

			<p><a class="btn btn-primary btn-pull" href="#" role="button">결과보기</a></p>
			
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/main.jpg">
				</div>
				<div class="item">
					<img src="images/main2.jpg">
				</div>
				<div class="item">
					<img src="images/main3.jpg">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
	<script src="js/bootstrap.js"></script>
</body>
</html>