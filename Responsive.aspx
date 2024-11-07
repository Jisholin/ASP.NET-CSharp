<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Responsive.aspx.cs" Inherits="Login.Responsive" StyleSheetTheme="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 103%;
            margin-bottom: 308px;
            height: 222px;
        }
        .auto-style2 {
            width: 466px;
            height: 71px;
        }
        .auto-style4 {
            width: 254px;
            height: 71px;
        }
        .auto-style5 {
            margin-left: 61px;
        }
        .auto-style6 {
            width: 1517px;
            height: 1286px;
        }
        .auto-style7 {
            width: 1898px;
            height: 39px;
        }
        .auto-style8 {
            margin-left: 1px;
        }
        .auto-style9 {
            width: 466px;
            height: 81px;
        }
        .auto-style10 {
            width: 254px;
            height: 81px;
        }
        .auto-style13 {
            height: 78px;
        }
        .auto-style16 {
            height: 71px;
        }
        .auto-style17 {
            width: 466px;
            height: 78px;
        }
        .auto-style18 {
            width: 254px;
            height: 78px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #FFFFCC">
        <div align="center" style="font-size:xx-large; background-color: #99FF99;" class="auto-style7">Login Page</div><br /><br />
        <div class="auto-style6">
            <table class="auto-style1" align="center">
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="User Name" ValidateRequestMode="Enabled"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Width="273px" CssClass="auto-style8"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBox2" runat="server" Width="273px" CssClass="auto-style8" type="password"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style10">
                        <asp:Button ID="Button1" runat="server" BackColor="Red" BorderStyle="Solid" CssClass="auto-style5" ForeColor="White" Text="Login" Width="117px" OnClick="Button1_Click" />
                        </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style10">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect Credentials" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
