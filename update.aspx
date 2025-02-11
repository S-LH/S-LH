<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="san_lun_hotel.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户修改</title>
        <link rel="icon" href="ico/三轮饭店.ico"/>
    <script src="css/dist/js/jquery-3.5.1.min.js"></script>
    <link href="css/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="css/dist/js/bootstrap.bundle.min.js"></script>
    <link href="css/dist/css/button.css" rel="stylesheet" />
    <style>
					.pic {
            text-align:center;
            background-size: 100% 100%;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-weight: 700;
        }
			#yzm{
				width:200px;
				height:40px;
			}
			#Button2{
				width:100px;
				height:37px;
				line-height:20px;
			}
			.sjh{
				margin-right: -141px;
			}
			#Button1{
				width:90px;
				height:40px;
			}
    </style>
	<script type="text/javascript"> 
        var countdown = 60;
        function settime(val) {
            if (countdown == 0) {
                val.removeAttribute("disabled");
                val.value = "获取验证码";
                countdown = 60;
            } else {
                val.setAttribute("disabled", true);
                val.value = "重新发送(" + countdown + ")";
                countdown--;
            }
            setTimeout(function () {
                settime(val)
            }, 1000)
        }
    </script>
</head>

<body class="text-center pic" background="img/草莓背景.png"> 
    <form id="form1" runat="server">
        <div>
           
			<div class="content container">
				 
				<div class="top">  <h2 style="color: #a71c1c" class="text-center">SanLun饭店·信息修改</h2></div>
				<div class="center">
					
					<div class="line">
						<label>名字</label>
						<asp:TextBox ID="name" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
						<%--<input type="" name="" id="" value="" required="required"/>--%>
					
					</div>
				
				<div class="line">
					<label>密码</label>
					
					<asp:TextBox ID="pwd" runat="server"></asp:TextBox>
					
				    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pwd" ErrorMessage="不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
					
				</div>	
					<div class="line not">
						<label>原电话号码</label>
						<asp:TextBox ID="tell" runat="server"></asp:TextBox>
						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tell" ErrorMessage="格式不正确" ForeColor="Red" ValidationExpression="1[3456789]\d{9}"></asp:RegularExpressionValidator>
					
					    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tell" ErrorMessage="不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
						
					</div>	
					 
					 <div  class="sjh bottom">
              
            
                <asp:TextBox ID="yzm" runat="server" placeholder="输入验证码" CssClass="m-auto text-center" size="8" name="captcha"></asp:TextBox>

                <asp:Button ID="Button2" runat="server" Text="获取验证码" size="8" CssClass="btn btn-danger text-center"  OnClick="Button2_Click1" />

            </div>
				
				</div>
				<asp:Button ID="Button1" CssClass="m-auto text-center btn btn-danger" runat="server" Text="点击修改" OnClick="Button1_Click" /><br />
				<a style="text-decoration:none; color:black;" href="dingcan.aspx">返回</a>
				
			</div>
        </div>
    </form>
</body>
</html>
