<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CuiAccTable.aspx.cs" Inherits="san_lun_hotel.CuiTable" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>菜品订单</title>
    <link rel="icon" href="ico/三轮饭店.ico" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="css/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        th{
            font-size:20px;
        }
       /* .pages {
            color:#999;
        }

            .pages a, .pages .cpb {
             width:50px;
             float:left;
              text-align:center;
          
            background-color:#fff;
          margin-left:100px;
              font-size:11px;
             color:#000;
            }
           
            .pages a：hover {
                background-color: #E61636;
                color: #fff;
                border:1px solid #E61636;
                text-decoration:none;
            }

            .pages .cpb {
                font-weight:bold;
              color:#fff;
               background-color: #E61636;
               border:1px solid #E61636 ;
               
            }*/
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
            <h2 style="color: #a71c1c" class="text-center">SanLun饭店·菜品订单</h2>
            <h5><a href="dingcan.aspx" style="color: black">返回首页</a></h5>


            <asp:Label ID="Label1" runat="server" Text="姓名："></asp:Label><%=Session["username"] %>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="手机号码："></asp:Label><%=Session["usertell"] %>

           <%-- <table class="table table-bordered">
                <tr style="color: #a71c1c">
                    <th>商品名称</th>
                    <th>单价</th>
                    <th>数量</th>
                    <th>小计</th>

                </tr>     </table>--%>
             <%--<tr>
                            <td>
                                <img src="img/菜品素材图/<%# Eval("CuiImg") %>" width="100" />
                                <label><a id="name" href="Detail.aspx?pid=<%# Eval("CuiID") %>"><%# Eval("CuiName") %></a></label>
                            </td>
                            <td class="text-center"><%# Eval("Price","{0:C}") %></td>
                            <td class="text-center"><%# Eval("Sum") %></td>
                            <td class="text-center"><%# Eval("Num","{0:C}") %></td>
            <div>  </tr>--%>
             <table class="table text-center ">
                <tr style="color: #a71c1c">
                    <th>  &nbsp; &nbsp; &nbsp;   商品名称</th>
                      <th></th>  
                    <th> &nbsp; &nbsp; &nbsp;   &nbsp; &nbsp; &nbsp;商品图片</th>
                    
                   <th></th>
                     <th></th>
                    <th>  &nbsp; &nbsp; &nbsp; 单  价</th>
                   <th></th> <th></th>
                    
                    <th>  &nbsp; &nbsp; &nbsp; 数  量</th>
                     <th></th> <th></th>
                     
                    <th>  &nbsp; &nbsp; &nbsp; 小  计</th>
                     <th></th>
                  <th>  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;  下单日期</th>
                </tr>    

             </table>
                 <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <%-- <h3>订单编号 <%# Eval("CuiTableID")  %></h3>--%>
        <div class="row table-bordered  text-center" style="line-height:90px;">
              
                <div class="col-md-2" style="color: #a71c1c"><%# Eval("CuiName") %></div>
                <div class="col-md-2" style="text-align:center;"><img src="img/菜品素材图/<%# Eval("CuiImg") %>" width="100" /></div>
                   <div class="col-md-2"><%# Eval("Price","{0:C}") %></div>
                <div class="col-md-2"><%# Eval("Sum") %>份</div>
                <div class="col-md-2">￥<%# Eval("Num") %></div>
                  <div class="col-md-2"><%# Eval("Time","{0:D}") %></div>
            </div>
                    </ItemTemplate>
                 </asp:Repeater>
           
            <div class="navbarfixed-bottom">
                 <webdiyer:AspNetPager ID="AspNetPager1" runat="server" OnPageChanging="AspNetPager1_PageChanging" FirstPageText="" LastPageText=""
                NextPageText="下一页" CssClass="pages anpager" CurrentPageButtonClass="cpb" PrevPageText="上一页" PageSize="4" NumericButtonCount="5">
            </webdiyer:AspNetPager>
            </div>
        </div>
        
 

    </form>
</body>
</html>
