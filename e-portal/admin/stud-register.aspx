<%@ Page Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="stud-register.aspx.cs" Inherits="e_portal.admin.stud_register" %>

<asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<head>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 67%;
            margin-left: 22px;
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
            width: 420px;
        }
        .auto-style6 {
            width: 199px;
            height: 37px;
        }
        .auto-style7 {
            height: 37px;
            width: 420px;
        }
        .auto-style8 {
            width: 420px;
        }
        </style>
</head>

        <div>
            
            <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" Text="E-portal -&gt; "></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Font-Underline="True" Text="Student -&gt; "></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Font-Underline="True" Text="New Student Registration"></asp:Label>
            <br />
            <br />
        <table class="auto-style1" style="padding: 8px; font-family: Arial, Helvetica, sans-serif; font-size: medium">
            <tr>
                <td style="padding: 5px" colspan="2">
                    <asp:Label ID="Label30" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="padding: 5px">
                    <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Name : "></asp:Label>
                </td>
                <td class="auto-style3" style="padding: 5px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="180px"></asp:TextBox>
                    <asp:Label ID="Label40" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Email-ID : "></asp:Label>
                </td>
                <td style="padding: 5px" class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" TextMode="Email" Width="180px"></asp:TextBox>
                    <asp:Label ID="Label41" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Date Of Birth : "></asp:Label>
                </td>
                <td style="padding: 5px" class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" Height="20px" Width="180px"></asp:TextBox>
                    <asp:Label ID="Label42" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Contact No. : "></asp:Label>
                </td>
                <td style="padding: 5px" class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="180px"></asp:TextBox>
                    <asp:Label ID="Label43" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Parents Contact No. : "></asp:Label>
                </td>
                <td style="padding: 5px" class="auto-style8">
                    <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="180px"></asp:TextBox>
                    <asp:Label ID="Label44" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Address : "></asp:Label>
                </td>
                <td style="padding: 5px" class="auto-style8">
                    <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="180px"></asp:TextBox>
                    <asp:Label ID="Label45" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="padding: 5px">
                    <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="City : "></asp:Label>
                </td>
                <td style="padding: 5px" class="auto-style7">
                    <asp:TextBox ID="TextBox7" runat="server" Height="20px" Width="180px"></asp:TextBox>
                    <asp:Label ID="Label46" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Pincode : "></asp:Label>
                </td>
                <td style="padding: 5px" class="auto-style8">
                    <asp:TextBox ID="TextBox8" runat="server" Height="20px" Width="180px"></asp:TextBox>
                    <asp:Label ID="Label47" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Batch Year :  "></asp:Label>
                </td>
                <td style="padding: 5px" class="auto-style8">
                    <asp:TextBox ID="TextBox9" runat="server" Height="20px" Width="180px"></asp:TextBox>
                    <asp:Label ID="Label48" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Sem : "></asp:Label>
                </td>
                <td style="padding: 5px" class="auto-style8">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Selected="True">1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
                    <asp:Label ID="Label14" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Department : "></asp:Label>
                    <asp:Label ID="errorlabel1" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="padding: 5px" class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [department]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 5px">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Login-ID" />
                </td>
                <td style="padding: 5px" class="auto-style8">
                    <asp:Label ID="errorlabel" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        </div>
   </asp:Content>