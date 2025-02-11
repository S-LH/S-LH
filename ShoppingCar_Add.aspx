<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCar_Add.aspx.cs" Inherits="san_lun_hotel.ShoppingCar_Add" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>购物车</title>
    <link href="css/dist/css/bootstrap.min1.css" rel="stylesheet" />
    <link rel="icon" href="ico/三轮饭店.ico" />
    <link href="css/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="css/dist/js/jquery-3.5.1.min.js"></script>
    <script src="css/dist/js/bootstrap.bundle.min.js"></script>
    <link href="css/dist/css/sp.css" rel="stylesheet" />
    <%-- //购物车的js--%>
    <script src="jscar/car.js"></script>
    <script src="jscar/car.js"></script>
    <%-- cs--%>
    <link href="csscar/register.css" rel="stylesheet" />
    <link href="csscar/list.css" rel="stylesheet" />
    <link href="csscar/index.css" rel="stylesheet" />
    <link href="csscar/detail.css" rel="stylesheet" />
    <link href="csscar/common.css" rel="stylesheet" />
    <link href="csscar/car.css" rel="stylesheet" />
    <link href="csscar/base.css" rel="stylesheet" />
    <style>
        a {
            text-decoration: none;
        }

        #name {
            font-family: 楷书;
            color: #337ab7;
            font-size: 20px;
        }

        .p-sum {
            width: 137px;
        }

        .p-goods {
            margin-top: 8px;
            width: 518px;
        }

        .carcount {
            color: red;
            font-weight: bold;
            font-size: 25px;
        }

        #scdd {
            color: white;
        }

        a:hover {
            text-decoration: none;
        }
         
    </style>

</head>

<body>
    <form id="form1" runat="server">

        <div class="container">
            <h2 class="text-center" style="margin-top: 30px; font-weight: bold; font-size: 30px; color: #b1191a">SanLun 饭店购物车</h2>
            <p><a href="dingcan.aspx" style="color: #b1191a">继续购物</a></p>

            <%--<table  class="table table-bordered">
                <tr class="text-center">
                    <th><input type="checkbox" id="ckall" class="checkall" />全选</th><%--id="ckall"--%>
            <%--<th>商品信息</th>
                    <th>单价</th>
                    <th>数量</th>
                    <th>小计</th>
                    <th>操作</th>
                </tr>
                
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><input type="checkbox" id="ck" class="j-checkbox" value="<%# Eval("CuiID") %>"/></td>
                            <td><img src="img/菜品素材图/<%# Eval("CuiImg") %>" width="100" />
                                 <label><a id="name" href="Detail.aspx?pid=<%# Eval("CuiID") %>"><%# Eval("CuiName") %></a></label>
                            </td>
                            <td  class="text-center"><%# Eval("Price","{0:C}") %></td>
                            <td class="form-inline text-center p-num">
                                <a href="#" class="btn btn-primary jian">-</a>
                                <input type="text" class="form-control itxt" style="width:90px;" size="2" value="<%# Eval("sum") %>">
                                <a href="#" class="btn btn-info jia">+</a> 
                            </td>
                            <td  class="text-center"><%# Eval("CarPrice","{0:C}") %></td>
                            <td  class="text-center">
                                <a href="CartDel.aspx?prodid=<%# Eval("CuiID") %>" onclick="return confirm('确定移除？')" class="btn btn-warning btn-lg">删除</a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
          
            </table>--%>
            <div class="cart-thead">
                <div class="t-checkbox">
                    <input type="checkbox" name="" id="" class="checkall" />
                    全选
                </div>
                <div class="t-goods">商品</div>
                <div class="t-price">单价</div>
                <div class="t-num">数量</div>
                <div class="t-sum">小计</div>
                <div class="t-action">操作</div>
            </div>
            <!-- 商品详细模块 -->
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <div class="cart-item-list">
                        <div class="cart-item ">
                            <%--check-cart-item默认全选样式--%>
                            <div class="p-checkbox">
                                <%--<input type="checkbox" name="" id="" class="j-checkbox" value="<%# Eval("CuiID") %>"/>--%>
                                <asp:CheckBox ID="chkone" ToolTip='<%# Eval("CuiID") %>' CssClass="j-checkbox" runat="server" />
                            </div>
                            <div class="p-goods">
                                <div class="p-img">
                                    <img src="img/菜品素材图/<%# Eval("CuiImg") %>" width="100" />
                                </div>
                                <div class="p-msg"><a id="name" href="#"><%# Eval("CuiName") %></a></div>
                            </div>
                            <div class="p-price"><%# Eval("Price","{0:C}") %></div>
                            <div class="p-num form-inline">

                                <a href="#" class=" btn jian  " style="width: 30px; height: 35px;">-</a>
                                <input type="text" class="form-control itxt " style="width: 70px; height: 35px;" size="2" value="<%# Eval("sum") %>">
                                <a href="#" class=" btn jia " style="width: 30px; height: 35px;">+</a>
                                <%--</div>--%>
                            </div>
                            <div class="p-sum"><%# Eval("CarPrice","{0:C}") %></div>
                            <div><a href="CartDel.aspx?id=<%# Eval("CuiID") %>" onclick="return confirm('确定移除？')" class="btn btn-warning btn-lg">删除</a></div>
                        </div>
                </ItemTemplate>


            </asp:Repeater>

            <%--<webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="" LastPageText=""
                                 NextPageText="下一页" CssClass="pages anpager" CurrentPageButtonClass="cpb" PrevPageText="上一页" PageSize="5" NumericButtonCount="5" OnPageChanging="AspNetPager1_PageChanging1" AlwaysShow="True">
                             </webdiyer:AspNetPager>--%>
            <%--<webdiyer:AspNetPager ID="AspNetPager1" runat="server" 
                NextPageText="下一页" CssClass="pages anpager" CurrentPageButtonClass="cpb" PrevPageText="上一页" PageSize="5" NumericButtonCount="5" AlwaysShow="True" OnPageChanging="AspNetPager1_PageChanging">
            </webdiyer:AspNetPager>--%>
            <div class="cart-floatbar">
               
                <div class="toolbar-right">
                    <div class="amount-sum">已经选<em>0</em>件商品</div>
                    <div class="price-sum">总价： <em>0.00</em><asp:Label ID="lblsum" runat="server" Visible="False"></asp:Label></div>
                    <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="生成订单" OnClick="Button1_Click2" />
                    <%--<div class="btn " onclick="get()"><a id="scdd" href="dingdan1.aspx?id=<%# Eval("CuiID") %>">生成订单</a></div>--%>
                </div>
            </div>

            <%-- 加减按钮实时更新--%>
            <script>

                function getSum() {
                    var count = 0; // 计算总件数 
                    var money = 0; // 计算总价钱
                    $(".amount-sum em").text($(".j-checkbox>input:checked").length)
                    $(".p-sum").each(function (i, ele) {
                        console.info($(this).prevAll(".p-checkbox").children(".j-checkbox").children().prop("checked"))
                        if ($(this).prevAll(".p-checkbox").children(".j-checkbox").children().prop("checked")) {
                            money += parseFloat($(ele).text().substr(1));
                        }
                        //加了children() ，>input
                    });
                    $(".price-sum em").text("￥" + money.toFixed(2));
                    $(".price-sum #lblsum").text("￥" + money.toFixed(2));
                }
                /*  var chesckedlist = [];
                  $("input:checkbox:checked").each(function(){
                      chesckedlist.push($(this).val());
                  });
                  console.log("chesckedlist=" + chesckedlist);*/
                $(".jia").click(function () {
                    calnum(this)

                })
                $(".jian").click(function () {
                    if ($(this).next().val() == "1") return;
                    calnum(this)

                })


                function calnum(btn) {
                    var num = 1;
                    console.info($(btn).text())
                    if ($(btn).text() == "+") {
                        num = parseInt($(btn).prev().val());
                        num++;
                        $(btn).prev().val(num)
                    } else {
                        num = parseInt($(btn).next().val());
                        num--;
                        $(btn).next().val(num)
                    }

                    var prodid = $(btn).parent().prev().prev().prev().children().attr("title");
                    $.ajax({

                        url: "CarChangeNum.aspx?prodid=" + prodid + "&num=" + num,
                        type: "post",
                        success: function (data) {
                            if (data == 1) {
                                var price = parseFloat($(btn).parent().prev().text().replace("¥", ""));
                                $(btn).parent().next().text("¥" + (num * price).toFixed(2));
                                getSum();
                            }
                        }
                    })

                }
            </script>
        </div>
        <%-- 底部--%>
        <footer class="mt-auto" style="background-color: whitesmoke;">


            <p class="lead text-black text-center">
                <img src="img/三轮图标透明.png" style="width: 40px; text-align: center" /><br />
                店面:SanLun饭店  地址:湖南省长沙县湘龙街道.
            </p>
            <p class="text-center">SanLunHotel 湘ICP证0666号</p>

        </footer>
    </form>
</body>
</html>
