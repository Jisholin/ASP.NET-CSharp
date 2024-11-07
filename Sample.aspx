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
            right: 24px;
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
            margin-top: 23px;
        }
        .auto-style12 {
            margin-left: 24px;
        }
        .auto-style13 {
            width: 324px;
            height: 31px;
            text-align: center;
        }
        .auto-style14 {
            width: 324px;
            height: 26px;
            text-align: center;
        }
        .auto-style15 {
            width: 324px;
            height: 23px;
            position: static;
            right: 24px;
            text-align: center;
        }
        .auto-style16 {
            margin-left: 90px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #FFFFCC"> 
        <div style="font-size:x-large; background-color: #FF9933;" align="center">Task 1</div><br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic; ">
                    </td>
                <td class="auto-style15" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic; ">
                    <strong>ID</strong></td>
                <td class="auto-style5" spellcheck="True">
                    <asp:TextBox ID="TextBox5" runat="server" Width="279px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic; ">
                    &nbsp;</td>
                <td class="auto-style15" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic; ">
                    &nbsp;</td>
                <td class="auto-style5" spellcheck="True">
                    <asp:Button ID="Button4" runat="server" BackColor="#0066FF" Font-Bold="True" ForeColor="White" OnClick="Button4_Click" Text="SEARCH" Width="92px" CssClass="auto-style16" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic; ">
                    </td>
                <td class="auto-style15" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic; ">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" TabIndex="1" Text="Name"></asp:Label>
                </td>
                <td class="auto-style5" spellcheck="True">
                    <asp:TextBox ID="TextBox1" runat="server" TabIndex="1" Width="279px" ToolTip="Enter the Name"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic; ">
                    &nbsp;</td>
                <td class="auto-style15" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic; ">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Text="Number"></asp:Label>
                </td>
                <td class="auto-style5" spellcheck="True">
                    <asp:TextBox ID="TextBox2" runat="server" TabIndex="2" Width="279px" ToolTip="Enter Your Mobile Number"></asp:TextBox>
                </td>
           
                <td class="auto-style7" spellcheck="True" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic">
                    <asp:Button ID="Button5" runat="server" BackColor="Red" ForeColor="White" Height="22px" OnClick="Button5_Click" Text="Reset" Width="84px" />
                </td>
                <td class="auto-style7" spellcheck="True" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" spellcheck="True" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic">
                    &nbsp;</td>
                <td class="auto-style14" spellcheck="True" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Text="Address"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" TabIndex="2" Width="279px" ToolTip="Enter Your Mobile Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" spellcheck="True" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic">
                    &nbsp;</td>
                <td class="auto-style14" spellcheck="True" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Text="Task Name"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server" TabIndex="2" Width="277px" ToolTip="Enter Your Mobile Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" spellcheck="True" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic">
                    &nbsp;</td>
                <td class="auto-style14" spellcheck="True" style="font-family: 'Segoe UI Variable Display Semib'; font-size: medium; font-weight: normal; font-style: italic">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Text="Task Status"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="221px">
                        <asp:ListItem>--</asp:ListItem>
                        <asp:ListItem>On Going</asp:ListItem>
                        <asp:ListItem>Completed</asp:ListItem>
                        <asp:ListItem>InComplete</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style13"></td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="SUBMIT" Width="86px" BackColor="#00CC00" ForeColor="White" OnClick="Button1_Click" CssClass="auto-style9" ToolTip="Submit" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="REMOVE" Width="81px" BackColor="Red" ForeColor="White" OnClick="Button2_Click" CssClass="auto-style9" OnClientClick="Are you sure to Delete?" ToolTip="Delete" />
                &nbsp;&nbsp;
                    <asp:Button ID="btn_edit" runat="server" BackColor="Yellow" CssClass="auto-style12" Font-Bold="True" ForeColor="#333333" OnClick="Button3_Click" Text="EDIT" Width="76px" />
                </td>
            </tr>
        </table>
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style10" Width="700px" Height="147px">
           <Columns>
               <asp:BoundField DataField="Porter_ID" HeaderText="ID" SortExpression="Porter_ID" />
               <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
               <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
               <asp:BoundField  DataField="address" AccessibleHeaderText="Address" HeaderText="Address" />
               <asp:BoundField  DataField="Task_Name" HeaderText="Task Name" />
               <asp:BoundField  DataField="Task_Status" HeaderText="Task Status" />
           </Columns>
           <FooterStyle BackColor="#CCFFFF" />
           <HeaderStyle BackColor="#999999" />
           <SortedAscendingCellStyle ForeColor="#66FFFF" />
   </asp:GridView>
      
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
      
</form>
</body>
</html>
