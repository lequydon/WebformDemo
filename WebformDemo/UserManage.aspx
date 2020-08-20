<%@ Page Title=" User Manage" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="UserManage.aspx.vb" Inherits="WebformDemo.UserManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="manage_table">
<div>
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
	AllowSorting="True"  AllowPaging="True"
    PageSize="5" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="152px" Width="632px" 
		DataKeyNames="Id" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
	    <AlternatingRowStyle BackColor="#CCCCCC" />
	<Columns>
		<asp:BoundField ReadOnly="True" HeaderText="Id"
		DataField="Id" SortExpression="Id"></asp:BoundField>
		<asp:BoundField HeaderText="Email" DataField="Email"
		SortExpression="Email"></asp:BoundField>
		<asp:BoundField HeaderText="Role" DataField="Role"
		SortExpression="Role"></asp:BoundField>
		<asp:BoundField HeaderText="Sdt" DataField="Sdt"
		SortExpression="Sdt"></asp:BoundField>
		<asp:BoundField HeaderText="Hoten" DataField="Hoten"
		SortExpression="Hoten"></asp:BoundField>
		<asp:BoundField HeaderText="Namsinh" DataField="Namsinh"
		SortExpression="Namsinh"></asp:BoundField>
	</Columns>
	    <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
	</asp:GridView>
<%--	<asp:SqlDataSource ID="SqlDataSource1" runat="server"
	ConnectionString="<%$ ConnectionStrings:myConnectionString %>"
	SelectCommand="select * from [user]" />--%>
	</div>
<div >
<br />    
<asp:Label ID="lblmsg" runat="server"></asp:Label>
</div>
    </section>

</asp:Content>
