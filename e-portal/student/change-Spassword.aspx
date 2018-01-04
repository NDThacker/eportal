<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="change-Spassword.aspx.cs" Inherits="e_portal.student.change_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style15 {
            width: 175px;
        }
        .auto-style16 {
            width: 203px;
        }
        .auto-style17 {
            width: 175px;
            height: 50px;
        }
        .auto-style18 {
            width: 203px;
            height: 50px;
        }
        .auto-style19 {
            width: 175px;
            height: 49px;
        }
        .auto-style20 {
            width: 203px;
            height: 49px;
        }
        .auto-style21 {
            width: 52%;
            height: 139px;
            margin-left: 27px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div dir="auto">
        <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#990000" Orientation="Horizontal" RenderingMode="Table" StaticSubMenuIndent="10px" Width="100%">
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <Items>
                <asp:MenuItem NavigateUrl="~/student/student-info.aspx" Selected="True" Text="Student-Info" Value="Student-Info"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/student/result.aspx" Text="Result" Value="Result"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/student/attendance.aspx" Text="Attendance" Value="Attendance"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/student/feev.aspx" Text="Fee Voucher" Value="Fee Voucher"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/student/hall-ticket.aspx" Text="Hall-ticket" Value="Hall-ticket"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/student/stud-studypost.aspx" Text="StudyPost" Value="StudyPost"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/student/stud-elib.aspx" Text="e-lib" Value="e-lib"></asp:MenuItem>
                 <asp:MenuItem NavigateUrl="~/student/studlogout.aspx" Text="Log Out" Value="Log Out"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#FFCC66" />
        </asp:Menu>
            <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" Text="E-portal -&gt; "></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Font-Underline="True" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" Text="Change Password ?"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style21" style="font-family: Arial, Helvetica, sans-serif; font-size: medium;">
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label4" runat="server" Text="Enter New Password : "></asp:Label>
                    </td>
                    <td class="auto-style20">
                        <asp:TextBox ID="TextBox1" runat="server" MaxLength="16" TextMode="Password" Width="150px"></asp:TextBox>
                        <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    </td>
                    <td rowspan="3">
                        <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="both value must be same ,not empty and contain 8 to 16 charactor." Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label5" runat="server" Text="Re-enter Password : "></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBox2" runat="server" MaxLength="16" TextMode="Password" Width="150px"></asp:TextBox>
                        <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cancel" />
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
                    </td>
                </tr>
            </table>
&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
