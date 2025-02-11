<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="san_lun_hotel.index" %>


<!doctype html>
<html lang="en" class="h-100">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">

    <title>SanLun饭店首页</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/cover/">
      <link href="css/Loginstyle.css" rel="stylesheet" />
      <link href="css/dist/css/cover.css" rel="stylesheet" />

    <!-- Bootstrap core CSS -->
<link href="css/dist/css/bootstrap.min.css" rel="stylesheet"  integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      <link href="css/dist/css/bootstrap.min.css" rel="stylesheet" />
      <script src="css/dist/js/bootstrap.bundle.min.js"></script>
      <script src="css/dist/js/jquery-3.5.1.min.js"></script>
    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
      <link href="css/materialdesignicons.min.css" rel="stylesheet" />
      <link rel="icon" href="ico/三轮饭店.ico">
      <!--浏览器图标-->
<meta name="theme-color" content="#7952b3">


    <style>
     /* .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }
*/
     .head{
         margin-top:15px;
     }
      a{
          height:20px;
      }
    .pic{
       
       background-size:100% 100%;
       background-repeat:no-repeat;
       background-attachment:fixed;
      /* <!--背景图片铺平-->*/
    }
    /*h1{
        font-weight:bold;
    }*/
    #don {
			            transform: translate(1);
			             width: 120px;
                          height: 50px;
			            box-shadow: 0 0 15px #009dfd;
			            border-radius: 10px;
			            animation: pulse 1.0s linear infinite;
			        }
    .pp{
       padding-top:100px;
       padding-left:100px;
    }
        @keyframes pulse {
            0% {
            }

            70% {
                /* transform: scale(1);*/ /*我们不要用scale 因为他会让 阴影变大*/
                width: 120px;
                height: 50px;
                opacity: 1;
                box-shadow: 0 0 25px #f69dc5;
            }

            100% {
                width: 120px;
                height: 50px;
                opacity: 0;
                box-shadow: 0 0 35px #b6ff00;
            }
            /*@keyframes move{
        0%{
            transform:translate(1);
            background-color:palegoldenrod;
        }
        100%{
            transform:translate(2);
            background-color:rebeccapurple;
      
                 }}
    }*/
            /*  .head{
       margin-top:10px;
    }
   
      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      
      
      }*/
        }
     
        
      
    </style>

    
    <!-- Custom styles for this template -->
   
    
  </head>

 <body background="img/草莓背景.jpg" class="d-flex text-center text-white  pic" >
      
  <!-- <img src="img/剁椒鱼头.png" class="img-fluid " alt="..." />-->
   
<div class="container text-center row h-50 head ">
    <h1 class="col-2 ">SanLunHotel</h1>
    <h5 class="col-3">首页</h5>
    <h5 class="col-2">总在线<span style="color:red"><%=Application["onLine"] %></span> 人</h5>
     <h5 class="col-2">总访问<span style="color:red"><%=Application["total"] %></span>人 </h5>
    
     <h5 class="col-3 "><a href="地图.aspx" style="color:white; text-decoration:none;"><i class="mdi mdi-map-marker" style="color:white;"></i>湖南安全技术职业学院</a></h5>
  
  
    <div class="d pp  container">

  <h1>Start A Gourment Journey.</h1>
        <br />
         <h3>开启美食之旅</h3>
        <br />
  <p>勇敢是什么 是我明知道这一顿吃下去会胖 但我还是迎头而上.</p>
        <p class="lead">好好吃饭 用心生活.</p>
  <p class="lead">
      <a href="login.aspx" class="btn btn-lg btn-secondary fw-bold border-white bg-white btn-outline-info pulse"id="don">Get into</a>
    </p>
</div>
</div>
  



<%--<div class="cover-container">
  <header class="mb-auto ">
    <div class="row">
      <h3 class="float-md-start mb-0 col-6 ">SanLunHotel</h3>
          

      <nav class="nav nav-masthead justify-content-center float-md-end col-6">
          
        <a class="nav-link active " aria-current="page" href="#">首页</a>
       
        <a class="nav-link active  " href="#">联系我们00-99-11</a>
      </nav>
   </div>
  </header>
    </div>--%>
           
 <%-- <main class="px-3 container">
    <h1>Start A Gourment Journey.</h1>
     <h3>开启美食之旅</h3>
    <p class="lead textpink">勇敢是什么 是我明知道这一顿吃下去会胖 但我还是迎头而上.</p>
     <p class="lead">好好吃饭 用心生活.</p>
    <p class="lead">
      <a href="登录.aspx" class="btn btn-lg btn-secondary fw-bold border-white bg-white btn-outline-info pulse"id="don">Get into</a>
    </p>
  </main>--%>

  <%--<footer class="mt-auto text-white-50">
      
     
    <p class="lead text-white">店面:SanLun饭店  地址:湖南省长沙县湘龙街道.</p>
     
  </footer>
--%>

     
    
  </body>
     
</html>
