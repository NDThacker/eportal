<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="e_portal.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 536px;
        }
        .auto-style2 {
            width: 637px;
        }
        .auto-style3 {
            height: 27px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <table class="auto-style1" style="font-family: Arial, Helvetica, sans-serif; font-size: large; padding: 8px">
            <tr>
                <td colspan="2" class="auto-style4">
                    </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <center>
                    <asp:Label ID="Label1" runat="server" Text="E-portal" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="#FF0066"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <center>
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Log-In"></asp:Label>
                     </center>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <center>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Student</asp:ListItem>
                        <asp:ListItem>Faculty</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                    </asp:RadioButtonList>
                    </center>
                </td>
            </tr>
            <tr>
                <td colspan="2" dir="auto">
                    <center>
                    <asp:Label ID="Label2" runat="server" Text="Student ID: "></asp:Label>
                &nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                    <asp:Label ID="Label5" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td colspan="2" dir="auto">
                    <center>
                    <asp:Label ID="Label4" runat="server" Text="Password : "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Width="150px" EnableViewState="False" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label8" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <center>
                    <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" />
                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/forgot-pwd.aspx">Forget Password?</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style3">
                    <center>
                        <asp:Label ID="Label10error" runat="server" ForeColor="Red"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <center><asp:Label ID="Label6" runat="server" Text="*required field" ForeColor="Red"></asp:Label>
                    </center>
                    </td>
            </tr>
            <tr>
                <td colspan="2">
                    <center>
            <asp:Label ID="Label7" runat="server" Text="For registration please contact Admin.."></asp:Label>
                    </center>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
