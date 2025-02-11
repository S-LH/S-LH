<%@ Page Title="动态" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="dontai.aspx.cs" Inherits="san_lun_hotel.店铺动态" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .don {
            transform: translate(1);
            width: 120px;
            height: 50px;
            box-shadow: 0 0 15px #009dfd;
            /* border-radius: 50%;*/
            animation: pulse 1.0s linear infinite;
        }

        #ppp {
            width: 100%;
            height: 600px
        }
         #grzx {
            position: fixed;
            top: 35px;
            left: 8px;
            z-index: 19;
            border: none;
            outline: none;
            color: white;
            cursor: pointer;
            border-radius: 1px;
            width: 18px;
            padding: 15px 0;
            text-decoration: none;
            font-size: 10px;
        }

        .grzx {
            padding-top: -30px;
            /*  padding-left:125px;*/
            margin: 0 auto;
            color: red;
        }

        .offcanvas-start {
            width: 320px;
        }

        .sjh {
            margin: 0 auto;
            text-align: center;
        }

        .pic {
            width: 100px;
            height: 100px;
            margin: 0 auto;
            
          
        }
        #myBtn {
            display: none; /* 默认隐藏 */
            position: fixed;
            bottom: 100px;
            right: 30px;
            z-index: 99;
            border: none;
            outline: none;
        
         /*   background-color:#f69dc5;*/ /* 设置背景颜色，你可以设置自己想要的颜色或图片 */
            color: white; /* 文本颜色 */
            cursor: pointer;
            padding: 15px;
            border-radius: 10px; /* 圆角 */
          
        }
       
        @keyframes pulse {
            0% {
            }

            70% {
                /* transform: scale(5);  我们不要用scale 因为他会让 阴影变大*/
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
                background-color: white;
                color: orange;
            }
        }
    </style>
    <link rel="icon" href="ico/三轮饭店.ico">
    <script src="css/dist/js/jquery-3.5.1.min.js"></script>
    <script src="css/dist/js/bootstrap.bundle.min.js"></script>
    <link href="css/dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        

        <div class="tab-content">

            <div id="home" class="tab-pane active">

                </div>
           
                        </div>
                              
                   <main>
                    <!-- Carousel -->
                    <div id="demo" class="carousel slide" data-bs-ride="carousel">

                        <!-- Indicators/dots -->
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                            <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                            <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                        </div>

                        <!-- The slideshow/carousel -->
                        <div class="carousel-inner ">
                            <div class="carousel-item active">
                                <img src="img/qq_pic_merged_1646835703099.jpg" class="d-block" style="width: 100%; height: 600px;">
                                <div class="carousel-caption ">
                                    <h3>新品来袭!!!</h3>
                                    <a href="dingcan.aspx" class="btn btn-lg btn-secondary fw-bold border-white bg-white btn-outline-info pulse don" >立即品尝</a>
                                    <p>新鲜食材，独家配方！！！</p>

                                </div>
                            </div>
                            <div class="carousel-item">

                                <img src="img/qq_pic_merged_1646835765443.jpg" class="d-block" style="width: 100%; height: 600px;">
                                <div class="carousel-caption">
                                    <h3>新品来袭!!!</h3>
                                    <a href="dingcan.aspx" class="btn btn-lg btn-secondary fw-bold border-white bg-white btn-outline-info pulse don" >立即品尝</a>
                                    <p>新鲜食材，独家配方！！！</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="img/qq_pic_merged_1646835756349.jpg" class="d-block" style="width: 100%; height: 600px;">
                                <div class="carousel-caption">
                                    <h3>新品来袭!!！</h3>
                                    <a href="dingcan.aspx" class="btn btn-lg btn-secondary fw-bold border-white bg-white btn-outline-info pulse don">立即品尝</a>
                                    <p>新鲜食材，独家配方！！！</p>
                                </div>
                            </div>
                        </div>



                        <!-- Left and right controls/icons -->
                        <button class=" carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </button>
                    </div>
        </main>

                    <p></p>
                    <h1 class="text-center font-monospace">店长推荐</h1>
               
                    
                    <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3 ">
                        <div class="bg-danger me-md-2 pt-2 px-2 pt-md-2 px-md-2 text-center text-white overflow-hidden">
                            <div class="my-3 py-3">
                                <h2 class="display-5">玉米炖排骨</h2>
                                <p class="lead">加入筒骨炖煮 鲜甜.</p>
                            </div>

                            <div class="bg-light shadow-sm mx-auto" style="width: 90%; height: 300px; border-radius: 21px 21px 0 0;">
                                <img src="img/菜品素材图/玉米排骨汤.png" class="w-100 h-80" />
                              
                            </div>

                        </div>
                        <div class="bg-light me-md-3 pt-3 px-3 pt-md-3 px-md-3 text-center overflow-hidden">
                            <div class="my-3 p-3">
                                <h2 class="display-5">鸡婆笋炒田螺</h2>
                                <p class="lead">田螺切配上鲜嫩的笋子,真的是美味,回味无穷.</p>
                            </div>
                            <div class=" shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                                <img src="img/菜品素材图/田螺肉.png" class="w-100 h-80" />

                            </div>
                        </div>
                        <div class=" bg-warning me-md-2 pt-2 px-2 pt-md-2 px-md-2 text-center text-white overflow-hidden">
                            <div class="my-3 py-3">
                                <h2 class="display-5">冰梅见</h2>
                                <p class="lead">酸酸甜甜 开胃解辣.</p>
                            </div>
                            <div class="bg-light shadow-sm mx-auto" style="width: 85%; height: 300px; border-radius: 21px 21px 0 0;">
                                <img src="img/菜品素材图/冰梅见.png" class="w-100 h-80" />
                            </div>

                        </div>
                    </div>
                    <p></p>

                    <h1 class="text-center font-monospace">店铺环境</h1>
                    <p></p>
                    <div class="containers">
                        <img src="img/店铺/mmexport1646895762044.jpg" id="ppp" /></div>
                    <br />
                    <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3 ">
                        <div class="bg-danger me-md-1 pt-1 px-1 pt-md-1 px-md-1 text-center text-white overflow-hidden">
                            <div class="my-3 py-3">
                                <h2 class="display-5">包厢区</h2>
                                <p class="lead">main area.</p>
                            </div>

                            <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 350px; border-radius: 21px 21px 0 0;">
                                <img src="img/店铺/店铺%20(3).jpg" class="w-100 h-80" />
                            </div>

                        </div>
                        <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                            <div class="my-3 p-3">
                                <h2 class="display-5">吧台区</h2>
                                <p class="lead">bar area.</p>
                            </div>
                            <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 350px; border-radius: 21px 21px 0 0;">
                                <img src="img/店铺/店铺%20(2).jpg" class="w-100 h-80" />
                            </div>
                        </div>
                        <div class=" bg-warning me-md-2 pt-2 px-2 pt-md-2 px-md-2 text-center text-white overflow-hidden">
                            <div class="my-3 py-3">
                                <h2 class="display-5">主餐区</h2>
                                <p class="lead">main area.</p>
                            </div>
                            <div class="bg-light shadow-sm mx-auto" style="width: 85%; height: 300px; border-radius: 21px 21px 0 0;">
                                <img src="img/店铺/店铺%20(4).jpg" class="w-100 h-80" />
                            </div>

                        </div>
                    </div>

                    <h1 class="text-center font-monospace">店铺简介</h1>

                    <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
                        <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                            <div class="my-3 p-3">
                                <h2 class="display-5 font-monospace">S a n L u n 饭店</h2>
                                <p class="lead">服务不能第二，但顾客永远第一</p>
                            </div>
                            <div class="bg-dark bg-opacity-60 shadow-sm mx-auto font-monospace " style="width: 70%; height: 280px; color: white; border-radius: 21px 21px 0 0;">
                                三轮餐饮欢迎您<br />
                                <p></p>
                                <p></p>

                                本餐厅主营生猛海鲜、平潭小吃，以特色经营为基础，以服务满意为保证，集餐饮、休闲为一体。<br />
                                <p></p>
                                倡导绿色消费健康饮食，本店食材多以平潭岛野生海鲜为主，选用鲁花纯花生油烹制，所有工作人员持健康证上岗，餐品制作过程按国家食品安全相关规定进行，请新老朋友放心品食。<br />
                                <p></p>
                                三轮餐饮本着诚信为本、品质为先的经营理念，向广大顾客郑重承诺：所售海鲜均保活保鲜，足斤足两，缺一赔十<br />
                                <p></p>
                                三轮会所全体工作人员期待您的光临！<br />
                                <p></p>
                                营业时间：11：00—-凌晨1：00 

                            </div>
                        </div>

                    </div>


                
            </div>

         
             <script>
                 // 当网页向下滑动 20px 出现"返回顶部" 按钮
                 window.onscroll = function () { scrollFunction() };

                 function scrollFunction() {
                     console.log(121);
                     if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                         document.getElementById("myBtn").style.display = "block";
                     } else {
                         document.getElementById("myBtn").style.display = "none";
                     }
                 }

                 // 点击按钮，返回顶部
                 function topFunction() {
                     document.body.scrollTop = 0;
                     document.documentElement.scrollTop = 0;
                 }
             </script>
        <a href="#">
            <img src="ico/kf_03.png"  onclick="topFunction()" id="myBtn" title="回顶部"/>
        </a>
       
       
    
    
</asp:Content>
