<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountTable.aspx.cs" Inherits="san_lun_hotel.AccountTable" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>包厢订单</title>
     <link rel="icon" href="ico/三轮饭店.ico"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
  
    <script src="css/dist/js/bootstrap.bundle.min.js"></script>
    <style>
         .anpager .cpb {
            background: #a71c1c none repeat scroll 0 0;
            border: 1px solid #CCCCCC;
            color: #FFFFFF;
            font-weight: bold;
            margin: 5px 4px 0 0;
            padding: 4px 5px 0;
        }

        .anpager  {
            background: #FFFFFF none repeat scroll 0 0;
            border: 1px solid #CCCCCC;
            color: #a71c1c;
            margin: 5px 4px 0 0;
            padding: 4px 5px 0;
            text-decoration: none
        }

            .anpager a:hover {
                background: #a71c1c none repeat scroll 0 0;
                border: 1px solid #1F3A87;
                color: white;
                text-decoration:none;
            }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
        <div class="container">
              <h2 style="color: #a71c1c" class="text-center">SanLun饭店结·包厢订单</h2>
            <h5><a href="dingcan.aspx" style="color:black">返回首页</a></h5>
      
          
                <table class="table table-bordered" >
                    <tr style="color:#a71c1c">
                        <th>预留手机号码</th>
                        <th>预留名字</th>
                        <th>包厢名字</th>
                        <th>包厢价格</th>
                        <th>包厢图片</th>
                        <th>下单时间</th>
                    </tr>
                      <asp:Repeater ID="Repeater1" runat="server"><ItemTemplate>
                    <tr>
                        <td><%# Eval("ReservedTell") %></td>
                         <td><%# Eval("ReservedName") %></td>
                         <td><%# Eval("DetailName") %></td>
                         <td>￥<%# Eval("DetailPrice","{0:C}") %></td>
                         <td> <img src="img/包厢素材/<%# Eval("BoxImg")%>" / style="width:100px;"></td>
                         <td><%# Eval("OutTime","{0:D}") %></td>
                    </tr>
                            </ItemTemplate></asp:Repeater>
                </table>
                     <div class="navbarfixed-bottom">
                             <webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="" LastPageText=""
                                 NextPageText="下一页" CssClass="pages anpager" CurrentPageButtonClass="cpb" PrevPageText="上一页" PageSize="5" NumericButtonCount="5" OnPageChanging="AspNetPager1_PageChanging1" AlwaysShow="True">
                             </webdiyer:AspNetPager>
                <%-- <webdiyer:AspNetPager ID="AspNetPager1" runat="server" OnPageChanging="AspNetPager1_PageChanging" FirstPageText="" LastPageText=""
                NextPageText="下一页" CssClass="pages anpager" CurrentPageButtonClass="cpb" PrevPageText="上一页" PageSize="4" NumericButtonCount="5">
            </webdiyer:AspNetPager>--%>
            </div>                               
        </div>
          
    </form>
</body>
</html>
