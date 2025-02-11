<%@ Page Title="包厢预订" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="baoxaing.aspx.cs" Inherits="san_lun_hotel.包厢预订" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h2 {
            height: 50px;
        }

        .nav {
            text-align: center;
            margin: auto 0px;
        }

        .cpimg {
            width: 350px;
            height: 350px;
            text-align: center;
            padding-left: 60px;
        }
        .cpimg:hover{
            box-shadow:#728245 4px 6px 10px ;
        }
        kbd{
           font-size:40px;
        }
        kbd:hover{
            background-color:red;
        }
        .body1{
            padding-top:20px;
            border:solid 1px #b3adad;
            border-radius:20px;
        }
         .mdi{ width:110px;
          height:30px;
            color:red;
        }
          #gwc{
         
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
            font-size:20px;
          
       }
         
        
          .carcount{
            display:inline-block;width:20px;height:20px; line-height:20px;text-align:center;color:#fff;
            background:#ff0000;font-size:16px;border-radius:50%;
        }
        /*  购物车数量 样式*/
       
    </style>
    <link rel="icon" href="ico/三轮饭店.ico">
    <%--导入图标--%>
    <script src="css/dist/js/jquery-3.5.1.min.js"></script>
    <script src="css/dist/js/bootstrap.bundle.min.js"></script>
    <link href="css/dist/css/bootstrap.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
                      <div class="container">
                        <img src="ico/20220401_20045368.png.jpg" class="d-block" style="width: 100%; height: 500px;">
               
                 </div>
    <h2 class="text-center" style="padding-top:9px; font-family:楷书;">包厢预览区</h2>
    <div class="container  text-center m-auto ">
         
       

        <!-- Nav tabs -->
        
        <!-- Tab panes -->
        <%--显示数据库的包厢信息--%>
        <div class="tab-content container body1" >
          <div id="gwc" class="btn">
                   
                   <a href="ShoppingCar_Add.aspx" style="text-decoration:none;"> <i class=" mdi mdi-cart"> 购物车</i><span class="carcount"><%=cartCount %></span></a>
                </div>
                <br>
            <%--  <h1 class="text-center font-monospace"><a id="dbx" class="text-center text-black" style="text-decoration: none;">大包厢</a></h1>--%>
                <div class="row">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>

                            <div class="col-4">

                                <dl>
                                    <img src="img/包厢素材/<%# Eval("boxImg") %>" class="img-thumbnail cpimg " style="height:350px;" alt="Cinque Terre" />
                                </dl>

                               <dd><%# Eval("DetailName") %></dd>
                                <dd>定金<%# Eval ("DetailPrice")+"￥" %></dd>
                                <dd><div class="Xcontent35"><a href="Account.aspx?id=<%# Eval("BoxDetailID") %>" style="text-decoration:none; color:#e70909">立即预定</a></div></dd>

                            </div>

                        </ItemTemplate>
                    </asp:Repeater>
                </div>
          
      
                <br>
             <%-- <h1 class="text-center font-monospace"><a id="zbx" class="text-center text-black" style="text-decoration: none;">中包厢</a></h1>--%>
                <div class="row">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>

                            <div class="col-4">

                                <dl>
                                    <img src="img/包厢素材/<%# Eval("boxImg") %>" class="img-thumbnail cpimg " style="height:350px;" alt="Cinque Terre"/>
                                </dl>

                                <dd><%# Eval("DetailName") %></dd>
                               <dd>定金<%# Eval("DetailPrice")+"￥" %></dd>
                                
                                   <dd><div class="Xcontent35"><a href="Account.aspx?id=<%# Eval("BoxDetailID")%>"  style="text-decoration:none; color:#e70909">立即预定</a></div></dd>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>
                </div>
           
         
                <br>
             <%-- <h1 class="text-center font-monospace"><a id="xbx" class="text-center text-black" style="text-decoration: none;">小包厢</a></h1>--%>
                <div class="row">
                    <asp:Repeater ID="Repeater3" runat="server">
                        <ItemTemplate>

                            <div class="col-4">

                                <dl>
                                    <img src="img/包厢素材/<%# Eval("boxImg") %>" class="img-thumbnail cpimg " style="height:350px;" alt="Cinque Terre" />
                                </dl>

                                <dd><%# Eval("DetailName") %></dd>
                                <dd>定金<%# Eval("DetailPrice")+"￥" %></dd>
                                 <dd><div class="Xcontent35"><a href="Account.aspx?id=<%# Eval("BoxDetailID") %>"  style="text-decoration:none; color:#e70909">立即预定</a></div></dd>
                            </div>
                            
                        </ItemTemplate>
                    </asp:Repeater>
               </div>
            </div>
      




    </div>
</asp:Content>
