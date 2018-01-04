<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student-info.aspx.cs" Inherits="e_portal.student.student_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 67%;
            margin-left: 22px;
        }
        .auto-style2 {
            height: 0px;
            margin-bottom: 0px;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style4 {
            width: 199px;
        }
        .auto-style5 {
            height: 22px;
            width: 199px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2">
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
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Font-Underline="True" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <table class="auto-style1" style="padding: 8px; font-family: Arial, Helvetica, sans-serif; font-size: medium">
            <tr>
                <td style="padding: 5px" colspan="3">
                    <asp:Label ID="Label30" runat="server" Font-Bold="True" ForeColor="Red" Text="Notification Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Id : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label16" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Id"></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label37" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Login-ID : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label38" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Login-ID"></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" style="padding: 5px">
                    <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Name : "></asp:Label>
                </td>
                <td class="auto-style3" style="padding: 5px">
                    <asp:Label ID="Label17" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Name"></asp:Label>
                </td>
                <td class="auto-style3" style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Email-ID : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label18" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Email-ID"></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="30" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label36" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Date Of Birth : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label19" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Date Of Birth"></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Contact No. : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label20" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Contact No."></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="10" TextMode="Number" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label35" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Parents Contact No. : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label21" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Parents Contact No."></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Address : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label22" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Address"></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="25" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label34" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="City : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label23" runat="server" Font-Names="Arial" Font-Size="Medium" Text="City"></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="10" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label33" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Pincode : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label24" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Pincode"></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    <asp:TextBox ID="TextBox5" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="6" TextMode="Number" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label32" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">&nbsp;</td>
                <td style="padding: 5px">&nbsp;</td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Batch Year :  "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label25" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Batch Year"></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" Visible="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancel" Visible="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Sem : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label26" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Sem"></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    <asp:Label ID="Label31" runat="server" ForeColor="Red" Text="* required feild" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label14" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Department : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label27" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Department"></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    <asp:Label ID="Label30error" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label15" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Roll No. : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label28" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Roll No."></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Details" />
                </td>
                <td style="padding: 5px">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/student/change-Spassword.aspx">Change Password?</asp:HyperLink>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
        <asp:Label ID="Label29" runat="server" Font-Italic="True" Font-Names="Arial" Text="*Update any other details pls contact admin." Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
    </body>
</html>
