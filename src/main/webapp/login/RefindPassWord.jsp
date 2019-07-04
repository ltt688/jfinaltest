<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../style/register-login.css">
	
	<title>Findpassword</title>
<link rel="stylesheet" type="text/css" href="../css/buttons.css" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/backgroundShow.js"></script>
<script>
	      		function login(){
	      			
	      			var account=document.getElementById("useraccount").value;
	      			var pd=document.getElementById("userpassword").value;
	      			loginurl = "login?useraccount="+account+"&userpassword="+pd;
	      			if(account==""){
	      				alert("please input useraccount");
	      			}
	      			else{
	      				if(pd==""){
		      				alert("please input password");
	      				}
	      				else{
	      					
	    	      			document.getElementById("log").submit();
	    	      		}
	      			}			
	      		}
	      		
	      		function forgetpd(){
	      			var st=prompt("Please input your account to reset password by email");
	      			var urlsend="sendemail?account="+st;
	      			window.location.href=urlsend;
	      		}
		  </script>

<style type="text/css">
.d1 {
	width: 100%;
	height: 100%;
	display: block;
	position: absolute;
	left: 0px;
	top: 0px;
}

.bg {
	width: 300px;
	height: 450px;
	background: inherit;
	position: absolute;
	left: 0;
	top: 0;
	bottom: 0;
	right: 0;
	margin: auto;
}

.bg:after {
	content: "";
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0;
	top: 0;
	background: inherit;
	filter: blur(15px) opacity(97%);
	z-index: 11;
}

.mydiv {
	border-radius: 8px;
	background-color: rgba(200, 200, 200, 0.13);
	width: 300px;
	height: 450px;
	position: absolute;
	left: 0;
	top: 0;
	bottom: 0;
	right: 0;
	margin: auto;
	z-index: 99;
}

.myinput {
	font-weight: bold;
	background-color: rgba(200, 200, 200, 0);
	border-style: solid;
	border-width: 2px;
	border-color: rgba(0, 0, 0, 0.8);
	border-radius: 4px;
	width: 210px;
	height: 25px;
	box-shadow: 0 0 3px rgba(0, 0, 0, 0.4) inset;
	position: relative;
	left: 40px;
}

.myp {
	color: #000000;
	line-height: 5px;
	font-size: 20px;
	font-weight: 800;
	position: relative;
	left: 40px;
}

.myh1 {
	font-weight: bold;
	font-family: Microsoft YaHei;
	position: relative;
	left: 40px;
	bottom: 20px;
}
</style>
	
</head>
<body>
<div id="box"></div>
<div class="cent-box">
		<!-- 登录窗口      -->
	<div class="mydiv">
		<img src="../images"
			style="width: 30%; height: 10%; position: relative; left: 200px; top: 5px;" />
		<div id="topbar"></div>
		<div id="middlecontainer">
			<div id="login">
				<div id="container1">
					<br />
					<h1 class="myh1">找 回 密 码</h1>
				</div>

				<div id="container2">
					<form action="login" method="post" id="log">
						<div id="container2-1">
							<p class="myp">学  号:</p>
						</div>
						<div id="container2-2" style="position: relative; top: 10px;">
							<input id="useraccount" name="useraccount" maxlength="14"
								type="text" class="myinput">
						</div>
																		<div id="container2-3" >
							<p class="myp" style="position: relative; top: 40px;">电 子 邮 箱:</p>
						</div>
					 	
						
												<div id="container2-4">
							<input id="mailbox" name="mailbox" maxlength="14"
								type="text" class="myinput"
								style="position: relative; top: 52px;">
								<a
						style="color : #2F4F4F; position: relative; right: 40px; top: 77px; font-weight: bold; font-size: 12px;"
						onclick="??" >发送邮件验证</a>
							<p class="myp" style="position: relative; top: 77px;">验 证 码:</p>
							<input id="mailbox" name="mailbox" maxlength="14"
								type="text" class="myinput"
								style="position: relative; top: 89px;">
						</div>
				
					</form>
				</div>
				<div id="container3"
					style="position: relative; left: 52px; top: 90px;">
					<a href="/login/refindPassWord2">
                        <button style="padding: 0.7em 2em;"
						class="button button--round-s button--wayra button--border-medium button--text-thick button--size-l"
                               type="button" onClick="??">下 一 步</button>
                    </a>
				</div>

			</div>
		</div>
		<div id="bottombar"></div>
	</div>
</div>

<div class="footer">
	<p>Help To Help</p>
	<p>Designed By ??? team  2019</p>
</div>

<script src='../js/particles.js' type="text/javascript"></script>
<script src='../js/background.js' type="text/javascript"></script>
<script src='../js/jquery.min.js' type="text/javascript"></script>
<script src='../js/layer/layer.js' type="text/javascript"></script>
<script src='js/index.js' type="text/javascript"></script>
<script>
	$('.imgcode').hover(function(){
		layer.tips("看不清？点击更换", '.verify', {
        		time: 1000,
        		tips: [2, "#3c3c3c"]
    		})
	},function(){
		layer.closeAll('tips');
	}).click(function(){
		$(this).attr('src','http://www.cnhww.com/demo5/GetCode.asp' + Math.random());
	});
	$("#remember-me").click(function(){
		var n = document.getElementById("remember-me").checked;
		if(n){
			$(".zt").show();
		}else{
			$(".zt").hide();
		}
	});
</script>
</body>
</html>