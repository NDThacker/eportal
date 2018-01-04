<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="e_portal.student.attendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#990000" Orientation="Horizontal" RenderingMode="Table" StaticSubMenuIndent="10px" Width="100%">
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <Items>
                <asp:MenuItem NavigateUrl="~/student/student-info.aspx" Text="Student-Info" Value="Student-Info"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/student/result.aspx" Text="Result" Value="Result"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/student/attendance.aspx" Selected="True" Text="Attendance" Value="Attendance"></asp:MenuItem>
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
        <center>


        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Degree : B. Tech.   "></asp:Label>
            &nbsp;<asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Branch"></asp:Label>
            <br />


        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Name : "></asp:Label>


        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="name"></asp:Label>
            <br />


        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Student ID : "></asp:Label>


        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Student ID"></asp:Label>
            <br />


        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Batch Year : "></asp:Label>


        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Year"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Table ID="Table1" Border="1" runat="server" BackColor="White" BorderColor="#00FF99" CellPadding="12" CellSpacing="0" EnableTheming="True" Font-Bold="False" Font-Size="Larger" Height="17px" Width="943px">
               <asp:TableRow>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="View Attendance"></asp:Label>
                        </center>
                   </asp:TableCell>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Session No"></asp:Label>
                        </center>
                   </asp:TableCell>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Batch Year"></asp:Label>
                        </center>
                   </asp:TableCell>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Roll No"></asp:Label>
                        </center>
                   </asp:TableCell>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="percent"></asp:Label>
                        </center>
                   </asp:TableCell>
               </asp:TableRow>
            </asp:Table>
            <br />
            <br />


        <asp:Label ID="Label48" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Red"></asp:Label>


        </center>
    </form>
</body>
</html>
