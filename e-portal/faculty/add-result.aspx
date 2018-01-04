<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="add-result1.aspx.cs" Inherits="e_portal.faculty.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
        .auto-style2 {
            width: 30%;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" Text="E-portal -&gt; Upload -&gt; Result"></asp:Label>
    </p>
    <div>
        <br />&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Year : "></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="year"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Sem : "></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="sem"></asp:Label>
        &nbsp;<br />&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Faculty id :"></asp:Label>
        <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Department : "></asp:Label>
        <asp:Label ID="Label20" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="sem"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label21" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Subject Code : "></asp:Label>
        <asp:Label ID="Label22" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="sem"></asp:Label>
    </div>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="login_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="login_Id" HeaderText="login_Id" ReadOnly="True" SortExpression="login_Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
            <asp:BoundField DataField="dept_name" HeaderText="dept_name" SortExpression="dept_name" />
            <asp:BoundField DataField="roll_no" HeaderText="roll_no" SortExpression="roll_no" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [login_Id], [name], [sem], [dept_name], [roll_no] FROM [Student] WHERE (([dept_name] = @dept_name2) AND ([sem] = @sem))">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label20" DefaultValue="CE" Name="dept_name2" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Label7" DefaultValue="1" Name="sem" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style2">
            <tr>
                <td>Student ID :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Subject ID : </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Sem :</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Total Mark :</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Obtain Mark : </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Total LAB Attendance : </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Obtain LAB : </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Total Theory Attendance : </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Obtain Theory :</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Result(P/F)</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Selected="True">P</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Insert" Visible="False" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" Visible="False" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
