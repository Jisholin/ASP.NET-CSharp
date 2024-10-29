<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sample.aspx.cs" Inherits="Login.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 324px;
            height: 31px;
        }
        .auto-style4 {
            width: 324px;
            height: 23px;
            position: static;
        }
        .auto-style5 {
            height: 23px;
            width: 579px;
        }
        .auto-style6 {
            width: 579px;
            height: 31px;
        }
        .auto-style7 {
            width: 324px;
            height: 26px;
        }
        .auto-style8 {
            width: 579px;
            height: 26px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style10 {
            margin-left: 197px;
            margin-top: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #FFFFCC"> 
        <div style="font-size:x-large; background-color: #FF9933;" align="center">Task 1</div><br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic;">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" TabIndex="1" Text="Name"></asp:Label>
                </td>
                <td class="auto-style5" spellcheck="True">
                    <asp:TextBox ID="TextBox1" runat="server" TabIndex="1" Width="279px" ToolTip="Enter the Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" spellcheck="True" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Text="Number"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" TabIndex="2" Width="279px" ToolTip="Enter Your Mobile Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="SUBMIT" Width="86px" BackColor="#00CC00" ForeColor="White" OnClick="Button1_Click" CssClass="auto-style9" ToolTip="Submit" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="REMOVE" Width="86px" BackColor="Red" ForeColor="White" OnClick="Button2_Click" CssClass="auto-style9" OnClientClick="Are you sure to Delete?" ToolTip="Delete" />
                </td>
            </tr>
        </table>
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style10" Width="700px">
           <Columns>
               <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
               <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
           </Columns>
   </asp:GridView>
</form>
</body>
</html>
