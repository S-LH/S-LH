<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xiangqingye.aspx.cs" Inherits="san_lun_hotel.测试" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>商品详情页</title>

    <script src="css/dist/js/shangping.js"></script>
    <script src="css/dist/js/sp.js"></script>
    <script src="css/dist/js/jquery-3.5.1.min.js"></script>
    <link href="css/dist/css/sp.css" rel="stylesheet" />
    <link href="css/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" href="ico/三轮饭店.ico"/>
    <link href="css/materialdesignicons.min.css" rel="stylesheet" />
    <style>
      .picimg img{
          width:800px;
          height:650px;
          margin-top:20px;
      }
      .carico{
          color:white;
          font-size:15px;
      }
       .carcount{
            display:inline-block;width:20px;height:20px; line-height:20px;text-align:center;color:#fff;
            background:#ff0000;font-size:16px;border-radius:50%;
        }
      #gwc{
         
            position: fixed;
            bottom: 200px;
            right: 2px;
            z-index: 19;
            border: none;
            outline: none;
           
            cursor: pointer;
            padding: 15px;
            border-radius: 10px;
            font-size:20px;
            

       }
      a{
          text-decoration:none;
      }
   
    </style>
</head>
<body>
    <form id="form1" runat="server">
      
         
             <%-- //购物车--%>
                <div id="gwc" class="btn">
                   
                   <a href="ShoppingCar_Add.aspx"> <i class=" mdi mdi-cart" style="color:red; font-weight:bold; font-size:20px;"> 购物车</i> 
                       <span class="carcount"><%=cartCount %></span></a>
                </div>

            <div>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand"><ItemTemplate>
                
                <div class="Xcontent">
                <div style="text-align:left; padding-left:102px; padding-top:20px;"> <a href="dingcan.aspx" style ="color:black;">继续购买</a></div>
		<ul class="Xcontent01">
			
				<div class="Xcontent06"><img src="img/菜品素材图/<%# Eval("CuiImg")%>" style="width:450px;height:410px;"/></div>
				<ol class="Xcontent08">
					<div class="Xcontent07"><img src="img/菜品素材图/<%# Eval("CuiImg")%>" /></div>
					<div class="Xcontent09"><img src="img/菜品详情/<%# Eval("Img1")%>" /></div>
					<div class="Xcontent10"><img src="img/菜品详情/<%# Eval("Img2")%>" /></div>
                    <div class="Xcontent10"><img src="img/菜品详情/<%# Eval("Img3")%>" /></div>
				
				</ol>
				<ol class="Xcontent13">
					<div class="Xcontent17">
						<p class="Xcontent18">售价</p>
						<p class="Xcontent19"><span><%# Eval("Price","{0:C}")%></span></p>
                        <p class="Xcontent18">名称</p>
						<p class="Xcontent19"><span><%# Eval("CuiName")%></span></p>
						<div class="Xcontent20">
                            <p class="Xcontent21"><span style="color:#cd2426; font-weight:bold; font-size:20px;">菜品描述</span>:&nbsp;&nbsp;<%# Eval("Describe") %></p>
                 
						</div>
                        <p class="Xcontent21"><span style="color:#cd2426; font-weight:bold; font-size:20px;">使用须知</span>:&nbsp;&nbsp;到店请提前致两小时电商家,高峰期需等位;</p>

                        <p class="Xcontent21"><span style="color:#cd2426; font-weight:bold; font-size:20px;">服  务</span>:&nbsp;&nbsp;可申请退款，退款原路返回,24小时内到账;</p>
                        <p class="Xcontent21"><span style="color:#cd2426; font-weight:bold; font-size:20px;">注  意</span>:&nbsp;&nbsp;图片仅供参考,请以实物为准;</p>
						<br />
                     <p class="Xcontent22"><a href="ShoppingCar_Add.aspx?id=<%# Eval("CuiID") %>" class="btn btn-danger"> <i class="mdi mdi-cart carico">加入购物车</i></a></p>

                           
					</div>
			</ol>
		</ul>
           </div>
            </ItemTemplate></asp:Repeater>

            <script>
                $(document).ready(function () {
                    var $miaobian = $('.Xcontent08>div');
                    var $huantu = $('.Xcontent06>img');
                    var $miaobian1 = $('.Xcontent26>div');
                    $miaobian.mousemove(function () { miaobian(this); });
                    $miaobian1.click(function () { miaobian1(this); });
                    function miaobian(thisMb) {
                        for (var i = 0; i < $miaobian.length; i++) {
                            $miaobian[i].style.borderColor = '#dedede';
                        }
                        thisMb.style.borderColor = '#cd2426';

                        $huantu[0].src = thisMb.children[0].src;
                    }
                    function miaobian1(thisMb1) {
                        for (var i = 0; i < $miaobian1.length; i++) {
                            $miaobian1[i].style.borderColor = '#dedede';
                        }
                        //		thisMb.style.borderColor = '#cd2426';
                        $miaobian.css('border-color', '#dedede');
                        thisMb1.style.borderColor = '#cd2426';
                        $huantu[0].src = thisMb1.children[0].src;
                    }
                    $(".Xcontent33").click(function () {
                        var value = parseInt($('.input').val()) + 1;
                        $('.input').val(value);
                    })

                    $(".Xcontent32").click(function () {
                        var num = $(".input").val()
                        if (num > 0) {
                            $(".input").val(num - 1);
                        }

                    })

                })
 </script>
            </div>
               
         
           <div class="container text-center picimg">

            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <dl></dl>
                    <dd><img src="img/菜品素材图/<%# Eval("CuiImg")%>"/></dd>
                    <dd><img src="img/菜品详情/<%# Eval("Img1")%>" /></dd>
                    <dd><img src="img/菜品详情/<%# Eval("Img2")%>" /></dd>
                    <dd><img src="img/菜品详情/<%# Eval("Img3")%>" /></dd>
                </ItemTemplate>
            </asp:Repeater>
               </div>
             <hr />
                <footer class="mt-auto" style="background-color:whitesmoke;">
                  
                    
                    <p class="lead text-black text-center"><img src="img/三轮图标透明.png" style="width:40px; text-align:center" /><br />店面:SanLun饭店  地址:湖南省长沙县湘龙街道.</p>
                    <p class="text-center">SanLunHotel 湘ICP证0666号</p>

                </footer>
      
    </form>
</body>
</html>

