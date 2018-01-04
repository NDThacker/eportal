<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sem-result.aspx.cs" Inherits="e_portal.student.sem_result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 82%;
        }
        .auto-style2 {
            margin-left: 0px;
        }
    </style>
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
                <asp:MenuItem NavigateUrl="~/student/result.aspx" Selected="True" Text="Result" Value="Result"></asp:MenuItem>
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
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" Text="E-portal -&gt;  Result"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
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


        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="sem : "></asp:Label>


        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="sem"></asp:Label>


            <br />
            <br />
            <br />
            
            <asp:Table ID="Table1" Border="1" runat="server" CssClass="auto-style1" BackColor="White" BorderColor="#00FF99" CellPadding="12" CellSpacing="0" EnableTheming="True" Font-Bold="False" Font-Size="Larger">
               <asp:TableRow>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Subject Code"></asp:Label>
                        </center>
                   </asp:TableCell>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Subject Name"></asp:Label>
                        </center>
                   </asp:TableCell>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Obtain Marks"></asp:Label>
                        </center>
                   </asp:TableCell>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Total Marks"></asp:Label>
                        </center>
                   </asp:TableCell>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Text="Result"></asp:Label>
                        </center>
                   </asp:TableCell>
               </asp:TableRow>
            </asp:Table>
            <br />
            <br />
            <br />


        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Red"></asp:Label>


        </center>
    </form>
</body>
</html>
