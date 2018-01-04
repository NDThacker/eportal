<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feev.aspx.cs" Inherits="e_portal.student.feev" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style4 {
            width: 53%;
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
                <asp:MenuItem NavigateUrl="~/student/result.aspx" Text="Result" Value="Result"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/student/attendance.aspx" Text="Attendance" Value="Attendance"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/student/feev.aspx" Selected="True" Text="Fee Voucher" Value="Fee Voucher"></asp:MenuItem>
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
&nbsp;&nbsp;&nbsp;<div id="print-section">
            <center>
            <br />
                <table class="auto-style1">
                    <tr>
                        <td>
                            <br />
                            <center><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Large" Font-Underline="True" Text="Dharmsinh Desai University"></asp:Label></center>
                            
                            <center><asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="Faculty Of Technology"></asp:Label></center>
                            
                            <center><asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="B Tech - "></asp:Label>
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="Branch"></asp:Label>
                                <br />
                                <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="True" Text="For Student"></asp:Label>
                            </center>
                            <br />
                            <center>
                            <table border="1" class="auto-style4">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="1 . Tution Fee"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="61500"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="2 . External exam fee"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="1000"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="3 . Lab &amp; W/S"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="250"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="4 . Library Fee"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="500"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="5 . Infra. Dev Charges"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="500"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="6 . Internet Fee"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="100"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="7 . Student Activity Fee"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="250"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" ForeColor="#9900CC" Text="Net Amount : "></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" ForeColor="#9900CC" Text="64100"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                                </center>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="Student Name : "></asp:Label><asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="name"></asp:Label>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="Student Id : "></asp:Label><asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="id"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="sem  : "></asp:Label><asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="sem"></asp:Label>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="Student Sign : "></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                        <td>

                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |<br />
                            |</td>
                        <td>
                            <br />
                            <center><asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Large" Font-Underline="True" Text="Dharmsinh Desai University"></asp:Label></center>
                            
                            <center><asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="Faculty Of Technology"></asp:Label></center>
                            
                            <center><asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="B Tech - "></asp:Label>
                            <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="Branch"></asp:Label>
                                <br />
                                <asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="True" Text="For University"></asp:Label>
                            </center>
                            <br />
                            <center>
                            <table border="1" class="auto-style4">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label36" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="1 . Tution Fee"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="61500"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label38" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="2 . External exam fee"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="1000"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label40" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="3 . Lab &amp; W/S"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label41" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="250"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label42" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="4 . Library Fee"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label43" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="500"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label44" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="5 . Infra. Dev Charges"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label45" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="500"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label46" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="6 . Internet Fee"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label47" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="100"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label48" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="7 . Student Activity Fee"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label49" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="250"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label50" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" ForeColor="#9900CC" Text="Net Amount : "></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label51" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" ForeColor="#9900CC" Text="64100"></asp:Label>
                                    </td>
                                </tr>
                            </table></center>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label52" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="Student Name : "></asp:Label><asp:Label ID="Label53" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="name"></asp:Label>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label54" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="Student Id : "></asp:Label><asp:Label ID="Label55" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="id"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label56" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="sem  : "></asp:Label><asp:Label ID="Label57" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="sem"></asp:Label>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label58" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" Text="Student Sign : "></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                        
                    </tr>
                </table>
            <br />
            </center>
        </div>
        <center><input id="Button1" type="button" value="Print" onclick="printDiv('print-section')"/></center>
        <asp:Label ID="Label59" runat="server" Text="Print and Pay fees @ Admin section of Campus.."></asp:Label>
        <br />
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
