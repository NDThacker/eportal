<%@ Page Language="C#" MasterPageFile="~/faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="change-Fpassword.aspx.cs" Inherits="e_portal.faculty.change_Fpassword" %>
<asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<head>
    <title></title>
    <style type="text/css">

        .auto-style14 {
            width: 53%;
            height: 139px;
            margin-left: 27px;
            margin-bottom: 0px;
        }
        .auto-style19 {
            width: 175px;
            height: 49px;
        }
        .auto-style20 {
            width: 203px;
            height: 49px;
        }
        .auto-style17 {
            width: 175px;
            height: 50px;
        }
        .auto-style18 {
            width: 203px;
            height: 50px;
        }
        .auto-style15 {
            width: 175px;
        }
        .auto-style16 {
            width: 203px;
        }
        </style>
</head>

    
        
            
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" Text="E-portal -&gt; "></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Font-Underline="True" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" Text="Change Password ?"></asp:Label>
            <br />
            <br />
            <table class="auto-style14" style="font-family: Arial, Helvetica, sans-serif; font-size: medium;">
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
            <br />
        
    
</asp:Content>