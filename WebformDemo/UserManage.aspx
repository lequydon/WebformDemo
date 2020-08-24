<%@ Page Title=" User Manage" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="UserManage.aspx.vb" Inherits="WebformDemo.UserManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="manage_table">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="951px" 
                DataKeyNames="Id" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating
                " >
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
                    <asp:BoundField DataField="Email" HeaderText="Email"  />
                    <asp:BoundField DataField="Role" HeaderText="Role" />
                    <asp:BoundField DataField="Sdt" HeaderText="Sdt" />
                    <asp:BoundField DataField="Hoten" HeaderText="Họ tên" />
                    <asp:BoundField DataField="Namsinh" HeaderText="Năm sinh" DataFormatString="{0:d}" />
                    <asp:CommandField ShowEditButton="true" />
                    <asp:CommandField ShowDeleteButton="true" />
                    
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </div>
        <div>
            <asp:Label ID="lblresult" runat="server"></asp:Label>
        </div>
        <div>
            <br />
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </div>
    </section>

</asp:Content>
