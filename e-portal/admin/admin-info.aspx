<%@ Page Language="C#"  MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="admin-info.aspx.cs" Inherits="e_portal.admin.admin_info" %>
<asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<head>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 67%;
            margin-left: 22px;
            height: 520px;
        }
        .auto-style4 {
            width: 199px;
        }
        .auto-style5 {
            height: 22px;
            width: 199px;
        }
        .auto-style3 {
            height: 22px;
        }
        </style>
</head>

        <div>
            
            <br />
&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" Text="E-portal -&gt; "></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Font-Underline="True" Text="Admin-info"></asp:Label>
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
                    <asp:Label ID="Label40" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Login ID : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label41" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="login ID"></asp:Label>
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
                    <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="10" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label35" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Email-ID : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label18" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Email-ID"></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="50" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label34" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
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
                    <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" Visible="False" TextMode="Date"></asp:TextBox>
                    <asp:Label ID="Label33" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Contact No. : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label20" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Contact No."></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    <asp:TextBox ID="TextBox5" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="10" TextMode="Number" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label32" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Address : "></asp:Label>
                </td>
                <td style="padding: 5px">
                    <asp:Label ID="Label22" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Address"></asp:Label>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    <asp:TextBox ID="TextBox6" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="25" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label37" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
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
                    <asp:TextBox ID="TextBox7" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="10" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label38" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
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
                    <asp:TextBox ID="TextBox8" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="6" TextMode="Number" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label39" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    &nbsp;</td>
                <td style="padding: 5px">
                    &nbsp;</td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" Visible="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancel" Visible="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    &nbsp;</td>
                <td style="padding: 5px">
                    &nbsp;</td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    <asp:Label ID="Label31" runat="server" ForeColor="Red" Text="* required feild" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Details" />
                </td>
                <td style="padding: 5px">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/change-Apassword.aspx">Change Password?</asp:HyperLink>
                </td>
                <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                    <asp:Label ID="Label30error" runat="server"></asp:Label>
                </td>
            </tr>
            </table>
        </div>
    
</asp:Content>