<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sjdl.aspx.cs" Inherits="san_lun_hotel.sjdl" %>



<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>SanLun饭店登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
  <link rel="stylesheet" media="screen" href="css/Loginstyle.css"/>
  <link rel="stylesheet" type="text/css" href="css/reset.css"/>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">



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
             border:1px solid #a71c1c;
        }
        .h3{
            font-size:30px;
            padding-bottom:5px;
        }
         
        .weizhi {
            height: 440px;
            background: rgb(255,255, 255,0.3);
            border-radius: 10px;
            margin-left: 500px;
            margin-bottom: 100px;
        }
       .inputBg{
         width:220px;
         height:40px;
         border:1px solid #a71c1c;
         border-radius:4px;

      
       }
       #Button2{
            height:40px;
         border:0px;
         border-radius:4px;
         background-color:rgb(130, 5, 16,0.8);
         color:white;
        
       }
        #Button1{
            height:35px;
         border:0px;
         border-radius:4px;
        background-color:rgb(130, 5, 16,0.8);
         color:white;
         width:80px;
        }
        .dl{
            width:70px;
            height:25px;
        }
         
        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="css/dist/css/signin.css" rel="stylesheet" />
    <script src="css/dist/js/jquery-3.5.1.min.js"></script>
   <script type="text/javascript">
       var mytime; //控制时间函数
       var countSecond = 60; //间隔时间，秒
       var curSecond; //当前剩余秒数
       if (document.getElementById("Button2").click == true) {
               $("#Button2").attr("disabled", "true"); //禁用按钮
               curSecond = countSecond;
               mytime = window.setInterval("ChangeText()", 1000); //间隔1秒调用倒数方法
       } else {
               window.clearInterval(mytime); //停止方法调用
               $("#Button2").removeAttr("disabled"); //启用按钮
               $("#Button2").val("重新发送验证码");
       }
       function ChangeText() {
           if (curSecond > 0) {
               $("#Button2").val("请在" + curSecond + "秒内输入验证码");
               curSecond--;
           }
           else {
               window.clearInterval(mytime); //停止方法调用
               $("#Button2").removeAttr("disabled"); //启用按钮
               $("#Button2").val("重新发送验证码");
           }
       }
   </script>


</head>
<body class="text-center pic" background="img/草莓背景.png">

    <form id="form2" method="post" runat="server"><%--action="dontai.aspx"  action="dontai.aspx" --%>
    <!--form-signin-->
         
    <div class="weizhi text-center container ">
        
            
   
            <div class="form-control text-center">
            <img class="mb-1" src="img/三轮图标透明.png" alt="" width="80" height="80">
            <h2 class="h3 mb-3 fw-normal">手机号码登录</h2>
                </div>
            <div class="form-floating">
                <asp:TextBox ID="name" runat="server" placeholder="手机号码" CssClass="input-group border-0 p text-center" TextMode="Phone" ></asp:TextBox>
               <br /> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="不能为空" ClientIDMode="AutoID" ControlToValidate="name" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="name" ErrorMessage="格式错误" ForeColor="Red" ValidationExpression="1[3456789]\d{9}"></asp:RegularExpressionValidator>
            </div>
             <br />
         <div>
              
              <asp:TextBox ID="TextBox4" runat="server" placeholder="验证码" size="8" name="captcha" class="inputBg form-control"></asp:TextBox>
                <asp:Button ID="Button2"  runat="server" Text="获取验证码" OnClick="Button2_Click" />
            
           
            </div>
            <br />

        <div class="text-center">

            <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click1" />


            <br />

            <br />


        </div>
        <a href="dl.aspx" class="nav-link text-white">返回</a>
        <a href="zhuce.aspx" class="nav-link text-white">注册</a>
        <br />



        <p class="mt-2 mb-3 text-muted">&copy; 2021–2022</p>
    </div>
    </form>


</body>
   
</html>


