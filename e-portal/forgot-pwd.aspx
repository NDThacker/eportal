<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot-pwd.aspx.cs" Inherits="e_portal.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style21 {
            height: 25px;
        }

        .auto-style1 {
            width: 100%;
            height: 536px;
        }
        .auto-style23 {
            width: 166px;
        }
        .auto-style24 {
            height: 171px;
            width: 298px;
        }
        .auto-style25 {
            width: 101px;
        }
        .auto-style26 {
            height: 90px;
        }
        .auto-style28 {
            width: 33%;
        }
        .auto-style29 {
            width: 194px;
        }
        .auto-style31 {
            width: 183px;
        }
        .auto-style32 {
            height: 29px;
        }
        .auto-style33 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style1" style="font-family: Arial, Helvetica, sans-serif; font-size: large; padding: 8px">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <center>
                    <asp:Label ID="Label1" runat="server" Text="E-portal" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="#FF0066"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <center>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Forget Password??"></asp:Label>
                     </center>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">
                    <center>
                    <asp:Panel ID="Panel1" runat="server">
                        <table class="auto-style24">
                            <tr>
                                <td colspan="2">
                                    <center>
                                        You are :
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                            <asp:ListItem Selected="True" Value="Student">Student</asp:ListItem>
                                            <asp:ListItem Value="Faculty">Faculty</asp:ListItem>
                                        </asp:DropDownList>
                                    </center>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style25">
                                    <asp:Label runat="server" Text="Student" ID="Label6"></asp:Label>
                                    <asp:Label runat="server" Text="ID : " ID="Label7"></asp:Label>
                                </td>
                                <td class="auto-style23">
                                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                                    <asp:Label ID="Label10" runat="server" ForeColor="Red">*</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style25">
                                    <asp:Label runat="server" Text="Email-ID : " ID="Label8"></asp:Label>
                                </td>
                                <td class="auto-style23">
                                    <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
                                    <asp:Label ID="Label11" runat="server" ForeColor="Red">*</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style25">
                                    <asp:Label runat="server" Text="Pincode : " ID="Label9"></asp:Label>
                                </td>
                                <td class="auto-style23">
                                    <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
                                    <asp:Label ID="Label12" runat="server" ForeColor="Red">*</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <center>
                                        <asp:Button ID="Button1" runat="server" Text="Verify" OnClick="Button1_Click" />
                                    </center>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:Panel ID="Panel2" runat="server" Height="99px" Visible="False">
                        <center>
                        <table class="auto-style28">
                            <tr>
                                <td class="auto-style31">
                                    <asp:Label ID="Label13" runat="server" Text="Enter new Password : "></asp:Label>
                                </td>
                                <td class="auto-style29">
                                    <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
                                    <asp:Label ID="Label16" runat="server" ForeColor="Red">*</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style31">
                                    <asp:Label ID="Label14" runat="server" Text="Re-enter Password : "></asp:Label>
                                </td>
                                <td class="auto-style29">
                                    <asp:TextBox ID="TextBox5" runat="server" Width="150px"></asp:TextBox>
                                    <asp:Label ID="Label17" runat="server" ForeColor="Red">*</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style31">
                                    <asp:Button ID="Button3" runat="server" Text="Cancel" OnClick="Button3_Click1" />
                                </td>
                                <td class="auto-style29">
                                    <asp:Button ID="Button2" runat="server" Text="Change" OnClick="Button2_Click1" />
                                </td>
                            </tr>
                        </table>
                        </center>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <center>
                        <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                        <asp:Label ID="Label18" runat="server" ForeColor="Red"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <center>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Log in..!</asp:HyperLink>
                    </center>
                </td>
            </tr>
            <tr>
                <td>
                    <center><asp:Label ID="Label4" runat="server" Text="*required field" ForeColor="Red"></asp:Label>
                    </center>
                    </td>
            </tr>
            <tr>
                <td>
                    <center>
            <asp:Label ID="Label5" runat="server" Text="For any Query,  please contact Admin.."></asp:Label>
                    </center>
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
