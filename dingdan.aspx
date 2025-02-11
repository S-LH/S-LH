<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dingdan.aspx.cs" Inherits="san_lun_hotel.dingdan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="css/dist/js/bootstrap.bundle.min.js"></script>
    <script src="css/dist/js/jquery-3.5.1.min.js"></script>
    <link href="css/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .js{
            width:65px;
            height:40px;
            float:right;
            background-color:#a71e1f;
            color:white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">

                <h2 style="color: #a71c1c" class="text-center">SanLun饭店结·订单结算</h2>

                <h3 style="background-color: #f5f5f5; color: #a71e1f">下单者信息</h3>


                <asp:Label ID="Label1" runat="server" Text="姓名："></asp:Label><%=Session["username"] %>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="手机号码："></asp:Label><%=Session["usertell"] %>

                <h3 style="background-color: #f5f5f5; color: #a71e1f">付款方式</h3>
                <asp:Label ID="Label3" runat="server" Text="在线付款"></asp:Label>
                <%-- <h3 style="background-color:#f5f5f5;color:#a71e1f" >备注</h3>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"> </asp:TextBox>--%>
                <h3 style="background-color: #f5f5f5; color: #a71e1f">商品清单</h3>

                <table class="table table-bordered">
                    <tr class="text-center">
                        <%--id="ckall"--%>
                        <th>商品名称</th>
                        <th>菜品图片</th>
                        <th>单价</th>
                        <th>数量</th>
                        <th>小计</th>

                    </tr>

                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <tr>

                               
                                      <td class="text-center">   <%# Eval("CuiName") %></a></td>
                                  <td class="text-center">   <img src="img/菜品素材图/<%# Eval("CuiImg") %>" width="100" /></td>
                                
                                  
                                
                                <td class="text-center"><%# Eval("Price","{0:C}") %></td>
                                <td class="text-center"><%# Eval("Sum") %></td>
                                <td class="text-center">￥<%# Eval("Num") %></td>


                            </tr>

                        </ItemTemplate>
                    </asp:Repeater>

                </table>
                <h3 style="background-color: #f5f5f5; color: #a71e1f">总金额:
                        ￥<%=Session["sumprice"] %>  <asp:Button ID="Button1" CssClass="btn js" runat="server" Text="结算" OnClick="Button1_Click"  /></h3>
                 

            </div>

        </div>
    </form>
</body>
</html>
