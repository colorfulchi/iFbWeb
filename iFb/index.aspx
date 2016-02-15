<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>IFoodBox 我的雲端冰箱</title>
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="css/indexstyle.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		
		<!---- animated-css ---->
		<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script type="text/javascript" src="js/jquery.corner.js"></script> 
		<script src="js/wow.min.js"></script>
		<script>
		 new WOW().init();
		</script>
		<!---- animated-css ---->
		<!---- start-smoth-scrolling---->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
		 <!---- start-smoth-scrolling---->
		<!----webfonts--->
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
		<!----start-top-nav-script---->
		<script>
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
		</script>
		<!----//End-top-nav-script---->
</head>
<body>
    <form id="form1" runat="server" style="height:100%;">
        <div class="container-fluid">
    <div class="bg">
		<!----- start-header---->
		<div class="container">
			<div id="home" class="header wow bounceInDown" data-wow-delay="0.4s">
					<div class="top-header">
						<div class="logo">
							<a href="index.aspx">IFoodBox</a>
						</div>
						<!----start-top-nav---->
						 <nav class="top-nav">
							<ul class="top-nav">
								<li><a href="LoginPage.aspx">會員登入</a></li>
								<li><a href="test1.aspx">愛便宜</a></li>
								<li><a href="#contact">愛分享</a></li>
                                <li><a href="#process">廠商登入</a></li>
                                <li class="active-join"><a href="MemberRegister.aspx">加入會員</a></li>
							</ul>
							<a href="#" id="pull"><img src="images/nav-icon.png" title="menu" /></a>
						</nav>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<!----- //End-header---->
        <!---- banner-info ---->
			<div class="banner-info">
				<div class="container">
					<h1 class="wow fadeIn" data-wow-delay="0.5s"><span>Loving Foods</span><br /><label>and Sharing Love</label></h1>
				<div class="top-banner-grids wow bounceInUp" data-wow-delay="0.4s">
					<div class="banner-grid text-center">
						<span class="top-icon1"> </span>
						<h3>冰箱管理</h3>
					</div>
					<div class="banner-grid banner-grid-active text-center">
						<span class="top-icon2"> </span>
						<h3>過期提醒</h3>
					</div>
					<div class="banner-grid text-center">
						<span class="top-icon3"> </span>
						<h3>食物分享</h3>
					</div>
					<div class="banner-grid text-center">
						<span class="top-icon4"> </span>
						<h3>促銷資訊</h3>
					</div>
					<div class="banner-grid text-center">
						<span class="top-icon5"> </span>
						<h3>購物清單</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
			<!---- banner-info ---->
    
    </div>
        </div>
    </form>
</body>
</html>
