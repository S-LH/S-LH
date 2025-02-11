<%@ Page Title="留言" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="liuyan.aspx.cs" Inherits="san_lun_hotel.留言" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            padding: 0px;
            margin: 0px;
        }

        ul {
            list-style: none;
        }

        a {
            text-decoration: none;
            color: white;
            font-size: 20px;
        }

        .books {
            width: auto;
            margin: 20px auto;
            text-align: center;
            border-radius: 10px;
            background-color: rgb(255, 255, 255, 0.9);
        }


            .books h3 {
                background-color: white;
                line-height: 40px;
                color: black;
            }

        .pjtc {
            width: auto;
            margin: 0 auto;
            background-color: white;
            line-height: 40px;
            color: black;
            font-weight: bold;
        }

        .list {
            height: 250px;
            line-height: 25px;
            overflow: hidden;
            padding-top: 30px;
        }

        span {
            color: #f03a3a;
            border-radius: 2px;
            line-height: 10px;
        }

        #zs {
            font-size: 30px;
        }

        .cpimg {
            margin-top: 30px;
            width: 270px;
            height: 210px;
            text-align: center;
            padding-right: 40px;
        }

        #pjtime {
            font-family: 正楷;
        }

        #pj {
            font-family: 正楷;
            font-size: 20px;
            font-weight: bold;
        }

        .lyq {
          
            padding-top: 40px;
       text-align:center;
        float: left;
        }

        .duiqi {
            text-align: left;
            font-family: 宋体;
            font-size: 20px;
        }

        .over {
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            z-index: 100;
        }

        .tempContainer {
            position: fixed;
            width: 100%;
            margin-right: 0px;
            margin-left: 0px;
            text-align: center;
            z-index: 101;
        }
       
      
       /* .name {
            float: left;
        }

        .pl {
            float: left;
        }*/
    </style>
    <script src="css/dist/js/bootstrap.bundle.min.js"></script>
    <script src="css/dist/js/jquery-3.5.1.min.js"></script>
    <script src="css/dist/js/jquery-1.7.2.min.js"></script>
    <link href="css/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/materialdesignicons.min.css" rel="stylesheet" />
    <link rel="icon" href="ico/三轮饭店.ico">
    <title>留言</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">

        <div class="books list">
            <h3>评价 留言</h3>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <dl>
                    </dl>

                    <dd class="container" id="pj"><%# Eval("ClientName")+"顾客:&nbsp;" %><abbr><b><span id="pjtime"><%# Eval("ClientAppraise")%> </span></b>
                    </dd>
                    <dd>&nbsp;</dd>



                </ItemTemplate>
            </asp:Repeater>
        </div>


        <script>
            $(function () {
                var t = 0;
                setInterval(function () {
                    $(".list dd:first").animate({
                        "margin-top": t--
                    }, 0, function () {
                        if ((-t) > $(this).height()) {
                            $(this).css({ "margin-top": "0px" })
                                .appendTo($(".list"))
                            t = 0;

                        }
                    })
                }, 50)
            })


        </script>
    </div>
    <div class="container text-center">
        <div class=" row container">

            <h3 class="text-center font-monospace pjtc">《评价图册》</h3>
            <%--<div id="bigim" onclick="closeimg();"></div>--%>

            <div id="dialog_large_image"></div>
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>

                    <div class=" col-4 ">
                        <div class="over"></div>
                        <!--背景层-->
                        <div class="logoImg amplifyImg">
                            <!--注意：此处的amlifyImg不可少-->
                            <dd>
                                <img src="img/评价相册/<%# Eval("AppraiseImg") %>" class="cpimg" id="dialog" /></dd>
                            <!-- 此处是引入图片的路径 -->
                        </div>

                    </div>

                </ItemTemplate>
            </asp:Repeater>
            <%-- //点击图片放大--%>
            <script>
                $(document).ready(function () {
                    var imgsObj = $('.amplifyImg img');//需要放大的图像
                    if (imgsObj) {
                        $.each(imgsObj, function () {
                            $(this).click(function () {
                                var currImg = $(this);
                                coverLayer(1);
                                var tempContainer = $('<div class=tempContainer></div>');//图片容器
                                with (tempContainer) {//width方法等同于$(this)
                                    appendTo("body");
                                    var windowWidth = $(window).width();
                                    var windowHeight = $(window).height();
                                    //获取图片原始宽度、高度
                                    var orignImg = new Image();
                                    orignImg.src = currImg.attr("src");
                                    var currImgWidth = orignImg.width;
                                    var currImgHeight = orignImg.height;
                                    if (currImgWidth < windowWidth) {//为了让图片不失真，当图片宽度较小的时候，保留原图
                                        if (currImgHeight < windowHeight) {
                                            var topHeight = (windowHeight - currImgHeight) / 2;
                                            if (topHeight > 40) {/*此处为了使图片高度上居中显示在整个手机屏幕中：因为在android,ios的微信中会有一个title导航，35为title导航的高度*/
                                                topHeight = topHeight - 40;
                                                css('top', topHeight);
                                            } else {
                                                css('top', 0);
                                            }
                                            html('<img border=0 src=' + currImg.attr('src') + '>');
                                        } else {
                                            css('top', 0);
                                            html('<img border=0 src=' + currImg.attr('src') + ' height=' + windowHeight + '>');
                                        }
                                    } else {
                                        var currImgChangeHeight = (currImgHeight * windowWidth) / currImgWidth;
                                        if (currImgChangeHeight < windowHeight) {
                                            var topHeight = (windowHeight - currImgChangeHeight) / 2;
                                            if (topHeight > 35) {
                                                topHeight = topHeight - 40;
                                                css('top', topHeight);
                                            } else {
                                                css('top', 0);
                                            }
                                            html('<img border=0 src=' + currImg.attr('src') + ' width=' + windowWidth + ';>');
                                        } else {
                                            css('top', 0);
                                            html('<img border=0 src=' + currImg.attr('src') + ' width=' + windowWidth + '; height=' + windowHeight + '>');
                                        }
                                    }
                                }
                                tempContainer.click(function () {
                                    $(this).remove();
                                    coverLayer(0);
                                });
                            });
                        });
                    } else {
                        return false;
                    }

                    //使用禁用蒙层效果
                    function coverLayer(tag) {
                        with ($('.over')) {
                            if (tag == 1) {
                                css('height', $(document).height());
                                css('display', 'block');
                                css('opacity', 1);
                                css("background-color", "#808080");
                                css("background-color", "rgba(80,80,80,0.1)");  //蒙层透明度
                            } else {
                                css('display', 'none');
                            }
                        }
                    }
                });
            </script>
            <%--<script type="text/javascript">
                                    $(function () {
                                        $("img#dialog").click(function () {
                                            var large_image = '<img src= ' + $(this).attr("src") + '></img>';
                                            $('#dialog_large_image').html($(large_image).animate({ height: '70%', width: '40%' }, 500));
                                        });
                                    });
                                </script>--%>
            <hr />

        </div>
        <%-- <script>
             function imgbig() {
                 var imgsrc = $('.imgsrc').attr('src');
                 $("#bigimg").css("display", "block");
                 $("#bigimg").html("<img src=" + imgsrc + " />");
             }

             function closeimg() {
                 $("#bigimg").css("display", "none");
             }
         </script>--%>
    </div>



    <div class="container lyq">

        <p class="text-center duiqi name">
            <i class=" mdi mdi-account-check"></i>
            <asp:Label ID="Label2" runat="server" Text="留下您的昵称/名字" ForeColor="Black"></asp:Label>
            <asp:TextBox ID="name" runat="server" ></asp:TextBox>
        </p>

        <p class="text-center duiqi ly">
            <i class=" mdi mdi-feather"></i>
            <asp:Label ID="Label1" runat="server" Text="留下您的评价/留言" ForeColor="Black"></asp:Label>
            <asp:TextBox ID="pj" runat="server" ></asp:TextBox>

        </p>
        </div>
     <br />
        <div class="text-center container">
             <br />
            <p>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:Button ID="Button1" runat="server" Text="点击上传您的评价/留言" CssClass="btn btn-danger w-25 anniu h-25" OnClick="Button1_Click" />
            </p>
        </div>


    



</asp:Content>
