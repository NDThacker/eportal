<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="generate-hallticket.aspx.cs" Inherits="e_portal.admin.generate_hallticket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 46px;
        }
        .auto-style2 {
            margin-left: 53px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" Text="E-portal -&gt; Other -&gt; Generate Hall-Ticket"></asp:Label>
        </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Department : "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [department]"></asp:SqlDataSource>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Sem :"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                <asp:ListItem Selected="True">1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Year : "></asp:Label>
        <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Year"></asp:Label>
            <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" DataKeyNames="code" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" SortExpression="code" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="dept_name" HeaderText="dept_name" SortExpression="dept_name" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Subject] WHERE [code] = @code" InsertCommand="INSERT INTO [Subject] ([name], [code], [dept_name], [sem]) VALUES (@name, @code, @dept_name, @sem)" SelectCommand="SELECT [name], [code], [dept_name], [sem] FROM [Subject] WHERE (([dept_name] = @dept_name) AND ([sem] = @sem))" UpdateCommand="UPDATE [Subject] SET [name] = @name, [dept_name] = @dept_name, [sem] = @sem WHERE [code] = @code">
        <DeleteParameters>
            <asp:Parameter Name="code" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="code" Type="String" />
            <asp:Parameter Name="dept_name" Type="String" />
            <asp:Parameter Name="sem" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="CE" Name="dept_name" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="1" Name="sem" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="dept_name" Type="String" />
            <asp:Parameter Name="sem" Type="Int32" />
            <asp:Parameter Name="code" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False" Text="Add Exam Date : " Visible="False"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Done" Visible="False" />
    <br />
    <br />
        <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large" Font-Underline="False"></asp:Label>
            <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataKeyNames="sem,year,sub_code" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="sem" HeaderText="sem" ReadOnly="True" SortExpression="sem" />
            <asp:BoundField DataField="year" HeaderText="year" ReadOnly="True" SortExpression="year" />
            <asp:BoundField DataField="sub_code" HeaderText="sub_code" ReadOnly="True" SortExpression="sub_code" />
            <asp:BoundField DataField="exam_date" HeaderText="exam_date" SortExpression="exam_date" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Exam] WHERE [sem] = @sem AND [year] = @year AND [sub_code] = @sub_code" InsertCommand="INSERT INTO [Exam] ([sem], [year], [sub_code], [exam_date]) VALUES (@sem, @year, @sub_code, @exam_date)" SelectCommand="SELECT [sem], [year], [sub_code], [exam_date] FROM [Exam] WHERE (([year] = @year) AND ([sem] = @sem))" UpdateCommand="UPDATE [Exam] SET [exam_date] = @exam_date WHERE [sem] = @sem AND [year] = @year AND [sub_code] = @sub_code">
        <DeleteParameters>
            <asp:Parameter Name="sem" Type="Int32" />
            <asp:Parameter Name="year" Type="Decimal" />
            <asp:Parameter Name="sub_code" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="sem" Type="Int32" />
            <asp:Parameter Name="year" Type="Decimal" />
            <asp:Parameter Name="sub_code" Type="String" />
            <asp:Parameter DbType="Date" Name="exam_date" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="Label9" DefaultValue="2017" Name="year" PropertyName="Text" Type="Decimal" />
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="1" Name="sem" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="exam_date" />
            <asp:Parameter Name="sem" Type="Int32" />
            <asp:Parameter Name="year" Type="Decimal" />
            <asp:Parameter Name="sub_code" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
