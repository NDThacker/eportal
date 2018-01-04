<%@ Page Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="sub-assign.aspx.cs" Inherits="e_portal.admin.sub_assign" %>
<asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 32px;
        }
    </style>
</head>

        <div>
            
            <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" Text="E-portal -&gt; "></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Font-Underline="True" Text="Other -&gt; Subject Assign"></asp:Label>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Department : "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [department]"></asp:SqlDataSource>
            <br />
            &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Faculty Member : "></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
            </asp:DropDownList>
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" CssClass="auto-style1" DataKeyNames="login_Id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="133px" Width="201px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="login_Id" HeaderText="login_Id" ReadOnly="True" SortExpression="login_Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="dept_name" HeaderText="dept_name" SortExpression="dept_name" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                </Fields>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [faculty] WHERE [login_Id] = @login_Id" InsertCommand="INSERT INTO [faculty] ([login_Id], [name], [dept_name], [status]) VALUES (@login_Id, @name, @dept_name, @status)" SelectCommand="SELECT [login_Id], [name], [dept_name], [status] FROM [faculty] WHERE ([login_Id] = @login_Id)" UpdateCommand="UPDATE [faculty] SET [name] = @name, [dept_name] = @dept_name, [status] = @status WHERE [login_Id] = @login_Id">
                <DeleteParameters>
                    <asp:Parameter Name="login_Id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="login_Id" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="dept_name" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="login_Id" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="dept_name" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                    <asp:Parameter Name="login_Id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Sem : "></asp:Label>
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem Selected="True">1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Category : "></asp:Label>
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem Selected="True" Value="T">Theory</asp:ListItem>
                    <asp:ListItem Value="P">Pratical</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Subject : "></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Assign" />
                <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="Label11" runat="server"></asp:Label>
            </asp:Panel>
            <br />
            <br />
            <center>



        <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="True" Text="Assigned Faculty Member"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="475px" AllowSorting="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                        <asp:BoundField DataField="faculty_id" HeaderText="faculty_id" SortExpression="faculty_id" />
                        <asp:BoundField DataField="sub_code" HeaderText="sub_code" SortExpression="sub_code" />
                        <asp:BoundField DataField="P_T" HeaderText="P_T" SortExpression="P_T" />
                        <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [year], [faculty_id], [sub_code], [P_T], [sem] FROM [sub_assign] WHERE (([dept] = @dept) AND ([year] = @year))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="dept" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="Label10" Name="year" PropertyName="Text" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />



            </center>
            <br />
        </div>

    </asp:Content>