<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mm.aspx.cs" Inherits="san_lun_hotel.找回密码" %>





<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>SanLun饭店注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<%--  <link rel="stylesheet" media="screen" href="css/Loginstyle.css"/>--%>
  <link rel="stylesheet" type="text/css" href="css/reset.css"/>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">
     <link href="css/dist/css/signin.css" rel="stylesheet" />
    <script type="text/javascript" src="Scripts/jquery.js"></script>
<script language="javascript">
	function get_mobile_code(){
        $.get('Post.aspx', {mobile:jQuery.trim($('#mobile').val())}, function(msg) {
            alert(jQuery.trim(unescape(msg)));
			if(msg=='提交成功'){
				RemainTime();
			}
        });
	};
	var iTime = 59;
	var Account;
	function RemainTime(){
		document.getElementById('zphone').disabled = true;
		var iSecond,sSecond="",sTime="";
		if (iTime >= 0){
			iSecond = parseInt(iTime%60);
			iMinute = parseInt(iTime/60)
			if (iSecond >= 0){
				if(iMinute>0){
					sSecond = iMinute + "分" + iSecond + "秒";
				}else{
					sSecond = iSecond + "秒";
				}
			}
			sTime=sSecond;
			if(iTime==0){
				clearTimeout(Account);
				sTime='获取手机验证码';
				iTime = 59;
				document.getElementById('zphone').disabled = false;
			}else{
				Account = setTimeout("RemainTime()",1000);
				iTime=iTime-1;
			}
		}else{
			sTime='没有倒计时';
		}
		document.getElementById('zphone').value = sTime;
	}	
</script>

    <!-- Bootstrap core CSS -->

    <link href="css/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">

    <link rel="icon" href="ico/三轮饭店.ico">
    <!--浏览器图标-->
    <meta name="theme-color" content="#7952b3">


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        .pic {
            text-align:center;
            background-size: 100% 100%;
            background-repeat: no-repeat;
            background-attachment: fixed;
            /* <!--背景图片铺平-->*/
        }
        .p {
            height: 40px;
            width: 290px;
            border-radius: 8px 5px;
        }
        /* .weizhi{*/

        /*  padding-left:700px;*/
        /* position:absolute;*/
        /* display:inline-block;
           width:80%;*/
        /*    }*/
        .weizhi {
            height:470px;
            background: rgb(255,255, 255,0.3);
            
        }
        .yzm{
            width:220px;
            height:40px;border-radius: 8px 5px;
        }
        .zc{
             width:70px;
            height:25px;
        }
        #zc{
        width:70px;
            height:25px;
        }
        .yzm1{
              width:60px;
            height:40px;border-radius: 8px 5px;
            border:0px;
        }
        .h3{
            font-size:30px;
            padding-bottom:5px;
        }
        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>


    <!-- Custom styles for this template -->
   

</head>
<body class="text-center pic" background="img/草莓背景.jpg">


    <!--form-signin-->
    <main class="weizhi form-signin ">
        <form id="form1" runat="server" action="登录.aspx" method="post" name="formUser" onSubmit="return register();">
          

            <img class="mb-4" src="img/三轮图标透明.png" alt="" width="80" height="80">
            <h2 class="h3 mb-3 fw-normal">找回密码</h2>

           
             <br />
            <div class="form-floating">
              
                <asp:TextBox ID="xmm" runat="server" placeholder="新密码" CssClass="input-group border-0 p text-center"></asp:TextBox>

            </div>
            <br />
              <div class="form-floating">
              
                <asp:TextBox ID="tell" runat="server" placeholder="手机号码" CssClass="input-group border-0 p text-center"></asp:TextBox>

            </div>
            <div>
              
              <%-- <input id="mobile" type="text" placeholder="手机号码" class="border-0 text-center yzm"/><br />--%>
                <asp:TextBox ID="TextBox4" runat="server" placeholder="验证码" size="8" name="captcha" class="inputBg"></asp:TextBox>
                <input id="zphone" type="button" value="发送手机验证码 " onClick="get_mobile_code();" />

            </div>
            <br />
            <asp:Button ID="zc" runat="server" Text="立即找回"  CssClass="btn btn-primary btn-lg" />
           <%-- <asp:Button ID="Button1" CssClass="btn btn-secondary zc" runat="server" Text="注册" OnClick="Button1_Click" />--%>

            <a href="login.aspx" class="nav-link text-white">返回</a>
          
            
            <p class="mt-2 mb-3 text-muted">&copy; 2021–2022</p>
        </form>
    </main>



</body>
</html>

