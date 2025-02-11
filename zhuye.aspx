<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zhuye.aspx.cs" Inherits="san_lun_hotel.zhuye1" %>

<!doctype html>
<html lang="en" class="h-100">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
       <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
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
     
     .head{
         margin-top:15px;
     }
      a{
          height:20px;
      }
       .navbar{
                width:100%;
            }
    .pic{
       
       background-size:100% 100%;
       background-repeat:no-repeat;
       background-attachment:fixed;
      /* <!--背景图片铺平-->*/
    }

        #don {
            transform: translate(1);
            width: 120px;
            height: 50px;
            box-shadow: 0 0 15px #009dfd;
            border-radius: 10px;
            animation: pulse 1.0s linear infinite;
        }
     #img {
            position: absolute;
            top: 2px;
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
           
        }
     
        
      
    </style>

    
    <!-- Custom styles for this template -->
   
    
  </head>

 <body background="img/草莓背景.png" class="d-flex text-center text-white  pic" >
      
  <!-- <img src="img/剁椒鱼头.png" class="img-fluid " alt="..." />-->
     <div> <%--跟着鼠标动的天使--%>
    <img src="ico/angel.gif" id="img" />
    <script>
        var pic = document.querySelector('#img');
        document.addEventListener('mousemove', function (e) {
            // 1. mousemove只要我们鼠标移动1px 就会触发这个事件
            // console.log(1);
            // 2.核心原理： 每次鼠标移动，我们都会获得最新的鼠标坐标， 把这个x和y坐标做为图片的top和left 值就可以移动图片
            var x = e.pageX;
            var y = e.pageY;
            console.log('x坐标是' + x, 'y坐标是' + y);
            //3 . 千万不要忘记给left 和top 添加px 单位
            pic.style.left = x - 40 + 'px';
            pic.style.top = y - 40 + 'px';


        });
    </script>
         </div>
<div class="container text-center row h-50 head ">
   
    <h3 class="col-2 ">SanLunHotel</h3>
    <div class="col-2"></div>
  
    <h5 class="col-4"></h5>
      <div class="col-1"></div>
   
     <h4 class="col-3 "><a href="地图.aspx" style="color:white; text-decoration:none;">湖南安全技术职业学院<i class="mdi mdi-map-marker" style="color:red;"></i></a></h4>
  
  
    <div class="d pp  container">

  <h1>Start A Gourment Journey.</h1>
        <br />
         <h3>开启美食之旅</h3>
        <br />
  <p>勇敢是什么 是我明知道这一顿吃下去会胖 但我还是迎头而上.</p>
        <p class="lead">好好吃饭 用心生活.</p>
  <p class="lead">
      <a href="dl.aspx" class="btn btn-lg btn-secondary fw-bold border-white bg-white btn-outline-info pulse"id="don">Get into</a>
    </p>
</div>
</div>
    
  </body>
     
</html>
