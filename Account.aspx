<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="san_lun_hotel.Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>包厢结算</title>
    <style>
        .btnjs{
            background-color:#a71e1f;
            color:white;
        }
    </style>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="css/dist/js/bootstrap.bundle.min.js"></script>

    <script src="css/dist/js/jquery-3.5.1.min.js"></script>
     <link rel="icon" href="ico/三轮饭店.ico"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <div class="container">
              
             <h2 style="color: #a71c1c" class="text-center">SanLun饭店结·包厢预定</h2>
               <p><a href="baoxaing.aspx">返回</a></p>
                <h3 style="background-color:#f5f5f5;color:#a71e1f" >下单者信息</h3>
                
                    
                <asp:Label ID="Label1" runat="server" Text="预留姓名"></asp:Label><asp:TextBox ID="name" CssClass="form-control" runat="server"></asp:TextBox>
              <br />
                <br />
                 <asp:Label ID="Label2" runat="server" Text="预留手机号码"></asp:Label> <asp:TextBox ID="tell"  CssClass="form-control" runat="server"></asp:TextBox>
              
                 <h3 style="background-color:#f5f5f5;color:#a71e1f" >付款方式</h3>
                  <asp:Label ID="Label3" runat="server" Text="在线付款"></asp:Label> 
                
              <h3 style="background-color:#f5f5f5;color:#a71e1f" >包厢详情</h3>
               
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="199px" Width="1157px">
                  <Columns>
                      <asp:BoundField DataField="DetailName" HeaderText="包厢名字" />
                      
                      <asp:TemplateField HeaderText="包厢图片">
                          
                          <ItemTemplate>
                              
                              <img src="img/包厢素材/<%# Eval("BoxImg")%>" / style="width:100px;">
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:BoundField DataField="DetailPrice" HeaderText="包厢价格" />
                  </Columns>
              </asp:GridView>
                    <div style="float:right;" class="btnjs">   <asp:Button ID="Button1" runat="server" Text="结算" CssClass="btn btn-danger" OnClick="Button1_Click" /></div>
            </div>
           
         
           
        <%-- 底部--%>
        <footer class="mt-auto" style="background-color: whitesmoke;">
                  
                    
                    <p class="lead text-black text-center"><img src="img/三轮图标透明.png" style="width:40px; text-align:center" /><br />店面:SanLun饭店  地址:湖南省长沙县湘龙街道.</p>
                    <p class="text-center">SanLunHotel 湘ICP证0666号</p>

                </footer>
        </div>
    </form>
</body>
</html>
