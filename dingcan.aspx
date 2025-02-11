<%@ Page Title="订餐" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="dingcan.aspx.cs" Inherits="san_lun_hotel.订餐" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        .carousel-indicators {
            margin-bottom: 3rem;
        }
        /*  购物车数量*/
        .carcount {
            display: inline-block;
            width: 20px;
            height: 20px;
            line-height: 20px;
            text-align: center;
            color: #fff;
            background: #ff0000;
            font-size: 16px;
            border-radius: 50%;
        }

        TD {
            FONT-SIZE: 12px;
        }

            td img {
                width: 200px;
                height: 200px;
            }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        #goTopBtn {
            position: fixed;
            line-height: 46px;
            text-align: center;
            width: 46px;
            bottom: 35px;
            height: 46px;
            cursor: pointer;
            background: #fff;
            display: none;
            border-radius: 6px;
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.13);
            font-size: 22px;
            color: #999;
        }

        #wenzilunbo {
            width: 1100px;
            margin: -34px auto 30px;
            overflow: hidden;
            border: solid 2px #ff0000;
            border-radius: 5px;
            font-size: 20px;
        }

        #announcement_box { /*position:absolute; top:60px;background-color:rgba(240, 239, 215, 0.5); background-color:#E3DEC0 \9;border:1px dashed #407864;*/
            border-radius: 2px;
            width: 1100px;
            max-height: 24px;
        }

        #announcement {
            margin-left: 10px;
            background: url(images/notice_icon.png) left center no-repeat scroll;
            height: 24px;
            line-height: 24px;
            overflow: hidden;
            padding: 0px 0px 0px 20px;
            float: left;
        }

            #announcement a {
                color: #ff0000;
            }

                #announcement a:hover {
                    color: #94382B;
                }

        .announcement_remove {
            padding: 0px 10px;
            float: right;
            font-size: 17px;
        }

        #myBtn1 {
            display: none;
            position: fixed;
            bottom: 40px;
            right: 30px;
            z-index: 99;
            border: none;
            outline: none;
            color: white;
            cursor: pointer;
            padding: 15px;
            border-radius: 10px;
        }

        ​

        .announcement_remove a {
            height: 18px;
            width: 18px;
            display: block;
            line-height: 17px;
            margin: 4px 0 3px 0;
            margin: 10px 0 3px 0 \9;
            text-align: center;
        }

        .announcement_remove a:hover {
            background-color: #cdc8a0;
            box-shadow: 1px 1px 1px #66614c inset;
            -webkit-box-shadow: 1px 1px 1px #666 inset;
            -moz-box-shadow: 1px 1px 1px #666 inset;
            border-radius: 3px;
        }

        #announcement_close {
            color: #ff0000;
        }

        #announcement span {
            color: #666;
        }

        #picwx {
            width: 45px;
            height: 40px;
            text-align: center;
        }

        .col-lg-3 {
            text-align: center;
        }

        .pixcp {
            width: 85%;
            height: 65%;
        }

        #cd {
            border: solid 1px red;
            height: 400px;
        }

        .cpimg {
            width: 270px;
            height: 190px;
            text-align: center;
            padding-left: 60px;
        }

        .cai {
            float: left;
            text-align: center;
            height: auto;
        }

        dd {
            text-align: center;
        }

        a {
            text-decoration: none;
        }

        .mdi {
            width: 110px;
            height: 30px;
            color: red;
        }

        #gwc {
            position: fixed;
            bottom: 200px;
            right: 2px;
            z-index: 19;
            border: none;
            outline: none;
            color: white;
            cursor: pointer;
            padding: 15px;
            border-radius: 10px;
            font-size: 20px;
        }

        #demo h2 {
            font-size: 40px;
        }

        .row h1 {
            background: rgba(236, 0, 0, 0.8);
            border-radius: 5px;
            color: white;
            margin-bottom: 50px;
        }
    </style>
    <link rel="icon" href="ico/三轮饭店.ico">
    <link href="css/dist/css/carousel.css" rel="stylesheet" />
    <link href="css/dist/css/广告.css" rel="stylesheet" />
    <link href="ico/materialdesignicons.min.css" rel="stylesheet" />
    <script src="css/dist/js/jquery-3.5.1.min.js"></script>
    <script src="css/dist/js/jquery-1.7.2.min.js"></script>
    <script src="css/dist/js/bootstrap.bundle.min.js"></script>
    <link href="css/dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <main>
            <%--图片轮播--%>
            <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <svg class="bd-placeholder-img" width="100%" height="100%" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <rect width="100%" height="70%" fill="#777" />
                        </svg>
                        <img src="img/店铺/mmexport1646916709026.jpg" class="d-block" style="width: 90%; height: 500px;">

                        <div class="container">

                            <div class="carousel-caption text-start">
                                <h1>大厅.</h1>
                                <p>现代化装修，绿色清新.</p>
                                <p><a class="btn btn-lg btn-primary" href="baoxaing.aspx">立即预订</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <rect width="100%" height="70%" fill="#777" />
                        </svg>
                        <img src="img/店铺/mmexport1646894217845.jpg" class="d-block" style="width: 90%; height: 600px;">
                        <div class="container">

                            <div class="carousel-caption">
                                <h1>休闲区.</h1>
                                <p>等座休息区，与三两好友.</p>
                                <p><a class="btn btn-lg btn-primary" href="baoxaing.aspx">立即预订</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <rect width="100%" height="70%" fill="#777" />
                        </svg>
                        <img src="img/店铺/mmexport1646917382884.jpg" class="d-block" style="width: 90%; height: 600px;">
                        <div class="container">
                            <div class="carousel-caption text-end">
                                <h1>吧台区.</h1>
                                <p>公司聚餐 微醺一下.</p>
                                <p><a class="btn btn-lg btn-primary" href="baoxaing.aspx">立即预订</a></p>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev " type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next " type="button" data-bs-target="#myCarousel" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>

                </div>

            </div>


            <div class="container marketing">

                <!--文字滚动-->
                <div id="wenzilunbo">
                    <div id="announcement_box">
                        <div id="announcement">
                            <ul style="margin-top: 0px;">
                                <li>温馨提示：根据疫情防控要求，出门记得戴口罩哟</li>
                                <li>本店特色菜品推荐:强烈推介小吃"椰子奶冻"</li>
                                <li>本店公告:欢迎到家到店来吃！</li>
                            </ul>
                        </div>
                        <div class="announcement_remove"><a title="关闭" href="javascript:void(0)" onclick="$('#announcement_box').slideUp('slow');"><span id="announcement_close">×</span></a></div>
                    </div>
                </div>

                <script>
                    function AutoScroll(obj) {
                        $(obj).find("ul:first").animate({
                            marginTop: "-25px"
                        }, 100, function () {
                            $(this).css({ marginTop: "0px" }).find("li:first").appendTo(this);
                        });
                    }
                    jQuery(function ($) {
                        $(document).ready(function () {
                            setInterval('AutoScroll("#announcement")', 4000)
                        });
                    });
                </script>
                <br />
                <!-- 四大菜系区 -->

                <div class="row ">
                    <div class="col-lg-3">
                        <img src="img/jif图片/蔬菜.jpg" class="pixcp bd-placeholder-img rounded-circle" />
                        <rect width="100%" height="100%" fill="#777" />
                        <h2>蔬菜区</h2>

                        <p><a class="btn btn-danger" href="#sc">立即品尝 &raquo;</a></p>
                    </div>
                    <!-- /.col-lg-3 -->
                    <div class="col-lg-3">
                        <img src="img/jif图片/主食.jpg" class="pixcp bd-placeholder-img rounded-circle" />
                        <rect width="100%" height="100%" fill="#777" />
                        <h2>主食区</h2>

                        <p><a class="btn btn-danger" href="#zs">立即品尝 &raquo;</a></p>
                    </div>
                    <!-- /.col-lg-3 -->
                    <div class="col-lg-3">
                        <img src="img/jif图片/小吃.jpg" class="pixcp bd-placeholder-img rounded-circle" />
                        <rect width="100%" height="100%" fill="#777" />
                        <h2>小吃区</h2>

                        <p><a class="btn btn-danger" href="#xc">立即品尝 &raquo;</a></p>
                    </div>
                    <!-- /.col-lg-3 -->
                    <div class="col-lg-3">
                        <img src="img/jif图片/饮料.jpg" class="pixcp bd-placeholder-img rounded-circle" />
                        <rect width="100%" height="100%" fill="#777" />
                        <h2>饮料区</h2>

                        <p><a class="btn btn-danger" href="#yl">立即品尝 &raquo;</a></p>
                    </div>
                    <!-- /.col-lg-3 -->
                </div>
                <br />

                <!-- /.row -->
                <!--菜品滚动-->
                <div id="demo" style="overflow: hidden; width: 600px; border-radius: 10px;" class="container">
                    <table cellspacing="0" cellpadding="0" align="center"
                        border="0" class="container">
                        <tbody style="color: red; font-weight: bold; font-family: 楷体;">
                            <tr>
                                <td id="marquePic1" valign="top">

                                    <table width="1280" height="130" border="0" cellpadding="0" cellspacing="0" class="container">
                                        <tr>

                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

                                            <td width="95" align="center">
                                                <h2>欢</h2>
                                            </td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td width="95" align="center">
                                                <h2>迎</h2>
                                            </td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td width="95" align="center">
                                                <h2>光</h2>
                                            </td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td width="95" align="center">
                                                <h2>临</h2>
                                            </td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td width="95" align="center">
                                                <h2>SanLun</h2>
                                            </td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td width="95" align="center">
                                                <h2>饭</h2>
                                            </td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td width="95" align="center">
                                                <h2>店</h2>
                                            </td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td width="95" align="center">
                                                <h2>欢</h2>
                                            </td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td width="95" align="center">
                                                <h2>迎</h2>
                                            </td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td width="95" align="center">
                                                <h2>光</h2>
                                            </td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td width="95" align="center">
                                                <h2>临</h2>
                                            </td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td width="95" align="center">
                                                <h2>SanLun</h2>
                                            </td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td width="95" align="center">
                                                <h2>饭</h2>
                                            </td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td width="95" align="center">
                                                <h2>店</h2>
                                            </td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

                                        </tr>
                                        <tr>
                                            <td align="center">&nbsp;</td>
                                            <td align="center">&nbsp;</td>
                                            <td align="center">&nbsp;</td>
                                            <td align="center">&nbsp;</td>
                                            <td align="center">&nbsp;</td>
                                            <td align="center">&nbsp;</td>
                                            <td align="center">&nbsp;</td>
                                            <td align="center">&nbsp;</td>

                                        </tr>
                                    </table>

                                </td>
                                <td id="marquePic2" valign="top"></td>
                            </tr>
                        </tbody>
                    </table>

                    <script type="text/javascript"> 
                        var speed = 20
                        marquePic2.innerHTML = marquePic1.innerHTML
                        function Marquee() {
                            if (demo.scrollLeft >= marquePic1.scrollWidth) {
                                demo.scrollLeft = 1
                            } else {
                                demo.scrollLeft++
                            }
                        }
                        var MyMar = setInterval(Marquee, speed)
                        demo.onmouseover = function () { clearInterval(MyMar) }
                        demo.onmouseout = function () { MyMar = setInterval(Marquee, speed) }
                    </script>
                </div>




                <!-- START THE FEATURETTES -->

                <!-- /.拉起QQ -->
                <div class="suspension">
                    <div class="suspension-box">
                        <a href="#" class="a a-service ">咨询<i class="i"></i></a>
                        <div class="d d-service">
                            <i class="arrow"></i>
                            <div class="inner-box">
                                <div class="d-service-item clearfix">
                                    <a href="https://jq.qq.com/?_wv=1027&k=OU1T3lnx" class="clearfix"><span class="circle">
                                        <img src="ico/qq.jpg" id="picwx" /></span><h3>咨询在线客服</h3>
                                    </a>
                                </div>
                            </div>

                        </div>



                    </div>
                    <script>
                        $(document).ready(function () {

                            /* ----- 侧边悬浮 ---- */
                            $(document).on("mouseenter", ".suspension .a", function () {
                                var _this = $(this);
                                var s = $(".suspension");
                                var isService = _this.hasClass("a-service");
                                var isServicePhone = _this.hasClass("a-service-phone");
                                var isQrcode = _this.hasClass("a-qrcode");
                                if (isService) { s.find(".d-service").show().siblings(".d").hide(); }
                                if (isServicePhone) { s.find(".d-service-phone").show().siblings(".d").hide(); }
                                if (isQrcode) { s.find(".d-qrcode").show().siblings(".d").hide(); }
                            });
                            $(document).on("mouseleave", ".suspension, .suspension .a-top", function () {
                                $(".suspension").find(".d").hide();
                            });
                            $(document).on("mouseenter", ".suspension .a-top", function () {
                                $(".suspension").find(".d").hide();
                            });
                            $(document).on("click", ".suspension .a-top", function () {
                                $("html,body").animate({ scrollTop: 0 });
                            });
                            $(window).scroll(function () {
                                var st = $(document).scrollTop();
                                var $top = $(".suspension .a-top");
                                if (st > 400) {
                                    $top.css({ display: 'block' });
                                } else {
                                    if ($top.is(":visible")) {
                                        $top.hide();
                                    }
                                }
                            });

                        });
                    </script>
                </div>
                <img src="ico/kf_03.png" onclick="topFunction()" title="回顶部" id="myBtn1">
                <%--  <button onclick="" id="myBtn" title="回顶部">返回顶部</button>--%>
                <script>
                    // 当网页向下滑动 20px 出现"返回顶部" 按钮
                    window.onscroll = function () {
                        scrollFunction()
                    };

                    function scrollFunction() {
                        console.log(121);
                        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                            document.getElementById("myBtn1").style.display = "block";
                        } else {
                            document.getElementById("myBtn1").style.display = "none";
                        }
                    }

                    // 点击按钮，返回顶部
                    function topFunction() {
                        document.body.scrollTop = 0;
                        document.documentElement.scrollTop = 0;
                    }
                </script>
                <%-- //购物车--%>
                <div id="gwc" class="btn ">

                    <a href="ShoppingCar_Add.aspx"><i class=" mdi mdi-cart">购物车</i><span class="carcount"><%=cartCount %></span></a>
                </div>
                <br />
                <div class="container">
                    <div class=" row">

                        <h1 class="text-center font-monospace"><a id="zs" class="text-center " style="text-decoration: none; color: white;">主食区</a></h1>
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" OnPreRender="Repeater1_PreRender">
                            <ItemTemplate>

                                <div class="col-3">

                                    <dl>
                                        <img src="img/菜品素材图/<%# Eval("CuiImg") %>" class="cpimg " />
                                    </dl>
                                    <dd><%# Eval("CuiName") %></dd>
                                    <dd><b><%# Eval("Price","{0:C}") %></b></dd>
                                    <dd><%# Eval("Describe") %></dd>
                                    <%--<dd><a href="详情页.aspx?id=<%#Eval("CuiID")%>查看详</a></dd>--%>
                                    <dd><a href="xiangqingye.aspx?id=<%# Eval("CuiID") %>"><i class="mdi mdi-gesture-tap">查看详情</i></a></dd>
                      
                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                        <hr />

                    </div>

                    <br />



                    <br />

                    <div class=" row">
                        <h1 class="text-center font-monospace"><a id="sc" class="text-center " style="text-decoration: none; color: white;">蔬菜区</a></h1>
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>

                                <div class="col-3">

                                    <dl>
                                        <img src="img/菜品素材图/<%# Eval("CuiImg") %>" class="cpimg" />
                                    </dl>
                                    <dd><%# Eval("CuiName") %></dd>
                                    <dd><b><%# Eval("Price","{0:C}") %></b></dd>
                                    <dd><%# Eval("Describe") %></dd>
                                    <dd><a href="xiangqingye.aspx?id=<%# Eval("CuiID") %>"><i class="mdi mdi-gesture-tap">查看详情</i></a></dd>
                                     

                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                        <hr />
                    </div>
                    <br />



                    <div class=" row">
                        <h1 class="text-center font-monospace"><a id="yl" class="text-center" style="text-decoration: none; color: white;">饮料区&nbsp;</a></h1>
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>

                                <div class="col-3">

                                    <dl>
                                        <img src="img/菜品素材图/<%# Eval("CuiImg") %>" class="cpimg" />
                                    </dl>
                                    <dd><%# Eval("CuiName") %></dd>
                                    <dd><b><%# Eval("Price","{0:C}")%></b></dd>
                                    <dd><%# Eval("Describe") %></dd>
                                    <dd><a href="xiangqingye.aspx?id=<%# Eval("CuiID") %>"><i class="mdi mdi-gesture-tap">查看详情</i></a></dd>
                                  

                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                        <hr />
                    </div>
                    <br />

                    <div class=" row">
                        <div></div>
                        <h1 class="text-center font-monospace"><a id="xc" class="text-center" style="text-decoration: none; color: white;">小吃区</a></h1>
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>

                                <div class="col-3">

                                    <dl>
                                        <img src="img/菜品素材图/<%# Eval("CuiImg") %>" class="cpimg" />
                                    </dl>
                                    <dd><%# Eval("CuiName") %></dd>
                                    <dd><b><%# Eval("Price","{0:C}") %></b></dd>
                                    <dd><%# Eval("Describe") %></dd>
                                    <dd><a href="xiangqingye.aspx?id=<%# Eval("CuiID") %>"><i class="mdi mdi-gesture-tap">查看详情</i></a></dd>
                                

                                </div>

                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                </div>
            </div>

        </main>


    </div>
</asp:Content>
