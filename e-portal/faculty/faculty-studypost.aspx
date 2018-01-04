<%@ Page Language="C#"  MasterPageFile="~/faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="faculty-studypost.aspx.cs" Inherits="e_portal.faculty.faculty_studypost" %>
<asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        #TextArea1 {
            height: 67px;
            width: 226px;
        }
    </style>
</asp:Content>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<head>
    <title></title>
</head>

    
        <div>
            <table class="auto-style1">
                <tr>
                    <td>Faculty=&gt;StudyPost<br />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Branch:
                        <asp:TextBox ID="TextBox1" runat="server" Height="16px"></asp:TextBox>
                        *</td>
                    <td>Year:
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        *</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <br />
                        Content *:</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;<textarea id="TextArea1" name="S1" runat="server"></textarea></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Post" />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/faculty/facultyview-studypost.aspx" OnClick="LinkButton1_Click">View Studypost</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>

</asp:Content>