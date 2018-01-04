<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hall-ticket.aspx.cs" Inherits="e_portal.student.hall_ticket" %>

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
                <asp:MenuItem NavigateUrl="~/student/attendance.aspx" Text="Attendance" Value="Attendance"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/student/feev.aspx" Text="Fee Voucher" Value="Fee Voucher"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/student/hall-ticket.aspx" Selected="True" Text="Hall-ticket" Value="Hall-ticket"></asp:MenuItem>
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
        <div id="print-area">
        <center>


            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large" Font-Underline="True" Text="Dharmsinh Desai University"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="False" Text="Faculty Of Technology"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="False" Text="B Tech - "></asp:Label>
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="False" Text="Branch"></asp:Label>
                                <br />
                                <br />
            <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="False" Text="Student Name : "></asp:Label><asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="False" Text="name"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="False" Text="Roll No. : "></asp:Label><asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="False" Text="roll"></asp:Label>
                            <br />
            <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="False" Text="Student Id : "></asp:Label><asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="False" Text="id"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="False" Text="sem  : "></asp:Label><asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="False" Text="sem"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="False" Text="Batch Year  : "></asp:Label><asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="False" Text="year"></asp:Label>
                            <br />
            <br />
            <asp:Table ID="Table1" Border="1" runat="server" CssClass="auto-style1" BackColor="White" BorderColor="#00FF99" CellPadding="12" CellSpacing="0" EnableTheming="True" Font-Bold="False" Font-Size="Medium">
               <asp:TableRow>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" Text="Sr No."></asp:Label>
                        </center>
                   </asp:TableCell>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" Text="Exam Date"></asp:Label>
                        </center>
                   </asp:TableCell>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" Text="Exam Time"></asp:Label>
                        </center>
                   </asp:TableCell>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" Text="Subject Code"></asp:Label>
                        </center>
                   </asp:TableCell>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" Text="Subject Name"></asp:Label>
                        </center>
                   </asp:TableCell>
                   <asp:TableCell BackColor="Aquamarine">
                       <center>
                           <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" Text="Supervisor Sign"></asp:Label>
                        </center>
                   </asp:TableCell>
               </asp:TableRow>
            </asp:Table>
            <br />
                                <br />


        </center>
        </div>
        <center>
            <asp:Label ID="Label34" runat="server"></asp:Label>
        <input id="Button1" type="button" value="Print" onclick="printDiv('print-area')"/><br /></center>
    </form>
</body>
    <script>
        function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;

            document.body.innerHTML = printContents;

            window.print();

            document.body.innerHTML = originalContents;
        }
    </script>
</html>
