<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zhuce.aspx.cs" Inherits="san_lun_hotel.注册" %>
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
            height: 30px;
            width: 290px;
            border-radius: 8px 5px;
             border:1px solid #a71c1c;
        }
       
        .weizhi {
           height: 440px;
            background: rgb(255,255, 255,0.3);
            border-radius: 10px;
            margin-left: 500px;
            margin-bottom: 130px;
            
        }
        .yzm{
            width:220px;
            height:30px;border-radius: 8px 5px;
        }
        .zc{
             width:70px;
            height:25px;
        }
        #zc{
        
             height:30px;
         border:0px;
         border-radius:4px;
         background-color:rgb(130, 5, 16,0.8);
         color:white;
         width:70px;
        

        }
        .yzm1{
              width:60px;
            height:30px;border-radius: 8px 5px;
            border:0px;
        }
        .h3{
            font-size:30px;
            padding-bottom:5px;
        }
        #Button1{
             background-color:rgb(130, 5, 16,0.8);
             border:0px;
             color:white;
               height: 30px;
            width: 65px;
              border-radius: 8px 5px;
        }
        #TextBox4{
           
              height: 30px;
            width: 218px;
            border-radius: 8px 5px;
             border:1px solid #a71c1c;
        }
        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>


    <!-- Custom styles for this template -->
   
  <%--  <script type="text/javascript"> 
        var countdown = 60;
        function settime(val) {
            if (countdown == 0) {
                val.removeAttribute("disabled");
                val.value = "获取验证码";
                countdown = 60;
            } else {
                val.setAttribute("disabled", true);
                val.value = "重新发送(" + countdown + ")";
                countdown--;
            }
            setTimeout(function () {
                settime(val)
            }, 1000)
        }
    </script>--%>
</head>
<body class="text-center pic" background="img/草莓背景.png">


    <!--form-signin-->
    <main class="weizhi form-signin ">
        <form id="form1" runat="server">
          

            <img class="mb-4" src="img/三轮图标透明.png" alt="" width="80" height="80">
            <h2 class="h3 mb-3 fw-normal">用户请注册</h2>

            <div class="form-floating">
               
                <asp:TextBox ID="name" runat="server" placeholder="用户名" CssClass="input-group border-0 p text-center" ></asp:TextBox>

              <br />  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="不能为空" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>
             <br />
            <div class="form-floating">
              
                 <asp:TextBox ID="tell" runat="server" placeholder="手机号码" CssClass="input-group border-0 p text-center"></asp:TextBox>

              <br />  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tell" ErrorMessage="不能为空" ForeColor="Red"></asp:RequiredFieldValidator>

                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tell" ErrorMessage="格式不正确" ForeColor="Red" ValidationExpression="1[3456789]\d{9}"></asp:RegularExpressionValidator>

            </div>
            <br />
              <div class="form-floating">
              
              
                   <asp:TextBox ID="mm" runat="server" placeholder="密码" CssClass="input-group border-0 p text-center"></asp:TextBox>

                   <br />  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="mm" ErrorMessage="不能为空" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>
            <br />
            <div>
              
              <%-- <input id="mobile" type="text" placeholder="手机号码" class="border-0 text-center yzm"/><br />--%>
                <asp:TextBox ID="TextBox4" runat="server" placeholder="验证码" size="8" name="captcha" class="inputBg "></asp:TextBox> <asp:Button ID="Button1" runat="server" Text="获取验证码" OnClick="Button1_Click1" />
                 <br />  
               

            </div>
            <br />
            <asp:Button ID="zc" runat="server" Text="注册"  CssClass="btn btn-primary btn-lg" OnClick="zc_Click" />
           <%-- <asp:Button ID="Button1" CssClass="btn btn-secondary zc" runat="server" Text="注册" OnClick="Button1_Click" />--%>

            <a href="dl.aspx" class="nav-link text-white">返回</a>
          
            
            <p class="mt-2 mb-3 text-muted">&copy; 2021–2022</p>
        </form>
    </main>



</body>
</html>

