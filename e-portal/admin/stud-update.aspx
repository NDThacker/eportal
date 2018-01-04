<%@ Page Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="stud-update.aspx.cs" Inherits="e_portal.admin.stud_update" %>

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
        }
        </style>
</head>

            <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" Text="E-portal -&gt; "></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Font-Underline="True" Text="Student -&gt; "></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Font-Underline="True" Text="Update Student Details"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Find By : "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Selected="True">Login-ID</asp:ListItem>
                <asp:ListItem>Name</asp:ListItem>
                <asp:ListItem>Email-ID</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Login-ID "></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text=" : "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Find" />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <table class="auto-style1" style="padding: 8px; font-family: Arial, Helvetica, sans-serif; font-size: medium">
                    <tr>
                        <td style="padding: 5px" colspan="3">
                            <asp:Label ID="Label30" runat="server" Font-Bold="True" ForeColor="Red" Text="Notification Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="padding: 5px">
                            <asp:Label ID="Label39" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Id : "></asp:Label>
                        </td>
                        <td style="padding: 5px">
                            <asp:Label ID="Label16" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Id"></asp:Label>
                        </td>
                        <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5" style="padding: 5px">
                            <asp:Label ID="Label40" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Name : "></asp:Label>
                        </td>
                        <td class="auto-style3" style="padding: 5px">
                            <asp:Label ID="Label17" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style3" style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                            <asp:TextBox ID="TextBox7" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="30" Visible="False"></asp:TextBox>
                            <asp:Label ID="Label44" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="padding: 5px">
                            <asp:Label ID="Label41" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Email-ID : "></asp:Label>
                        </td>
                        <td style="padding: 5px">
                            <asp:Label ID="Label18" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Email-ID"></asp:Label>
                        </td>
                        <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                            <asp:TextBox ID="TextBox6" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="30" Visible="False"></asp:TextBox>
                            <asp:Label ID="Label36" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="padding: 5px">
                            <asp:Label ID="Label42" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Date Of Birth : "></asp:Label>
                        </td>
                        <td style="padding: 5px">
                            <asp:Label ID="Label19" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Date Of Birth"></asp:Label>
                        </td>
                        <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                            <asp:TextBox ID="TextBox8" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="30" Visible="False"></asp:TextBox>
                            <asp:Label ID="Label45" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
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
                            <asp:TextBox ID="TextBox9" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="10" TextMode="Number" Visible="False"></asp:TextBox>
                            <asp:Label ID="Label46" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
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
                            <asp:TextBox ID="TextBox5" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="6" TextMode="Number" Visible="False" Height="26px"></asp:TextBox>
                            <asp:Label ID="Label32" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="padding: 5px">
                            <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Batch Year :  "></asp:Label>
                        </td>
                        <td style="padding: 5px">
                            <asp:Label ID="Label25" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Batch Year"></asp:Label>
                        </td>
                        <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">&nbsp;<asp:TextBox ID="TextBox12" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="4" TextMode="Number" Visible="False"></asp:TextBox>
                            <asp:Label ID="Label49" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
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
                            <asp:DropDownList ID="DropDownList3" runat="server" Visible="False">
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
                        </td>
                        <td style="padding: 5px">
                            <asp:Label ID="Label27" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Department"></asp:Label>
                        </td>
                        <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" Visible="False">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [department]"></asp:SqlDataSource>
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
                            <asp:TextBox ID="TextBox11" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="5" Visible="False"></asp:TextBox>
                            <asp:Label ID="Label48" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="padding: 5px">
                            <asp:Label ID="Label50" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="Password :"></asp:Label>
                        </td>
                        <td style="padding: 5px">
                            <asp:Label ID="Label51" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Medium" Text="password"></asp:Label>
                        </td>
                        <td aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true" style="padding: 5px">
                            <asp:TextBox ID="TextBox13" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Font-Underline="True" MaxLength="16" Visible="False"></asp:TextBox>
                            <asp:Label ID="Label52" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="padding: 5px">
                            <asp:Label ID="Label37" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Login-ID : "></asp:Label>
                        </td>
                        <td style="padding: 5px">
                            <asp:Label ID="Label43" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Login-ID"></asp:Label>
                        </td>
                        <td aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true" style="padding: 5px">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" Visible="False" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancel" Visible="False" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="padding: 5px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Details" />
                        </td>
                        <td style="padding: 5px">
                            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Cancel / Find New" />
                        </td>
                        <td style="padding: 5px" aria-atomic="False" aria-autocomplete="none" aria-disabled="True" aria-selected="true">
                            <asp:Label ID="Label31" runat="server" ForeColor="Red" Text="* required feild" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />

    </asp:Content>