<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>Luvlet</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<style>
.right_align {
	margin-right: 10px;
}
</style>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">Luvlet</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">main</a></li>
				<li><a href="bbs.jsp">BBS</a></li>
			</ul>
			<%
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Connect<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">SignIn</a></li>
						<li><a href="join.jsp">Join</a></li>
					</ul></li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">LogOut</a></li>
					</ul></li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<div id="survey">
				<p id="question">첨부할 파일을 업로드 하십시오</p>
        		<div>
        			<input type="file" id="getfile" accept="text/plain">
        		</div>
			</div>
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
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="fileINP.js"></script>
	 <script>
   		
   		 
    </script>
</body>
</html>