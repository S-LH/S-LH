<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dl.aspx.cs" Inherits="san_lun_hotel.dl" %>

<%@ Register Assembly="Vincent.AutoAuthCode" Namespace="Vincent.AutoAuthCode" TagPrefix="cc1" %>



<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
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
           /* text-align:center;
            background-size: 100% 100%;*/
/*            background-repeat: no-repeat;*/
          /*  background-attachment: fixed;*/
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
         /*.weizhi{

          margin:0 auto;
         position:absolute;
         display:inline-block;
           width:80%;
            }*/
        .weizhi {
           height: 440px;
            background: rgb(255,255, 255,0.3);
            border-radius: 10px;
            margin-left: 500px;
            margin-bottom: 100px;
          
            
        }
       
        
        .dl{
            width:70px;
            height:25px;
        }
         #Button1{
           height:35px;
         border:0px;
         border-radius:4px;
        background-color:rgb(130, 5, 16,0.8);
         color:white;
         width:80px;
        }
         #box{
           
		width: 300px;
		height: 420px;
		background: rgb(255,255, 255,0.3);
		position: absolute;
		left: 50%;
		top: 50%;
		margin-left: -150px;
		margin-top: -150px;
}
         
        
        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>


    <!-- 导入样式 -->
    <link href="css/dist/css/signin.css" rel="stylesheet" />
    <script src="css/dist/js/jquery-3.5.1.min.js"></script>

</head>
<body class="text-center pic" background="img/草莓背景.png" ><%--背景图片background="img/草莓背景.png"--%>
  

    <form id="form2" method="post" runat="server"><%--action="dontai.aspx"  action="dontai.aspx" --%>
    <!--form-signin-->
         
    <div id="box" class="text-center container " >
        
            
   
            <div class="container text-center">
            <img class="mb-1" src="img/三轮图标透明.png" alt="" width="80" height="80">
            <h2 class="h3 mb-3 fw-normal">用户请登录</h2>
                </div>
            <div class="form-floating">
             <%--  <asp:Label runat="server">账号</asp:Label><asp:TextBox ID="username" runat="server"></asp:TextBox><br />--%>
                <asp:TextBox ID="name" runat="server" placeholder="手机号码" CssClass="input-group border-0 p text-center" TextMode="Phone" ></asp:TextBox><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="name" ErrorMessage="手机号码格式不正确" ForeColor="Red" ValidationExpression="1[3456789]\d{9}"></asp:RegularExpressionValidator>
               <br /> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="不能为空" ClientIDMode="AutoID" ControlToValidate="name" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
             <br />
            <div class="form-floating">
              
                <asp:TextBox ID="pwd" runat="server" placeholder="密码" CssClass="input-group border-0 p text-center" TextMode="Password"></asp:TextBox>
                <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="不能为空" ControlToValidate="pwd" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <br />
        <div class="form-floating text-center">
            <cc1:AuthCode ID="AuthCode1" runat="server"  BorderStyle="Inset" ImageType="SimpleNoiseLine" TextControlWidth="80px" ToolTip="输入验证码" /><%--图片验证码控件，只要工具箱有这个就可以，不懂可以复制百度去查--%>
             </div>
     <br />
         <asp:Button ID="Button1" runat="server" Text="登录"  OnClick="Button1_Click" CssClass="btn btn-lg"/>
            <br />
           <%-- <input type="submit" value="登录"/>--%>
            <br />
           
        
    <a href="myadmin/login.aspx" class="nav-link text-white">管理员登录</a>
         <a href="zhuye.aspx" class="nav-link text-white">返回</a>
           <a href="zhuce.aspx" class="nav-link text-white">注册</a>
        <br />
             <a href="sjdl.aspx" class="nav-link text-white " style="color:red;">忘记密码?试试手机号码登录吧</a>
            
            
            <p class="mt-2 mb-3 text-muted">&copy; 2021–2022</p>
         </div>
        </form>


</body>
 
</html>

