<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLSinhvien.aspx.cs" Inherits="WebQLDaoTao.QLSinhvien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <h2>QUẢN LÝ SINH VIÊN</h2>
    <hr />
    
    <div class="table-responsive">
        <asp:GridView ID="gvSinhVien" runat="server" CssClass="table table-bordered table-hover" AutoGenerateColumns="false" 
            DataSourceID="odsSinhVien" AllowPaging="true" PageSize="5" DataKeyNames="masv">
            <Columns>
                <asp:BoundField DataField="MaSV" HeaderText="Mã SV" ReadOnly="true"/>
                <asp:BoundField DataField="HoSV" HeaderText="Họ SV" ControlStyle-Width="150px"/>
                <asp:BoundField DataField="TenSV" HeaderText="Tên SV" ControlStyle-Width="80px"/>
                <asp:CheckBoxField DataField="GioiTinh" HeaderText="Giới Tính"/>
                <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" DataFormatString="{0:đ/MM/yyyy}"/>
                <asp:BoundField DataField="NoiSinh" HeaderText="Nơi Sinh"/>
                <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi"/>
                <asp:BoundField DataField="MaKH" HeaderText="Mã Khoa" SortExpression="MaKH"/>
                <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" ButtonType="Image"
                    EditText="Sửa" DeleteText="Xoá" UpdateText="Ghi" CancelText="Không"
                    EditImageUrl="~/Contents/Images/edit.gif" DeleteImageUrl="~/Contents/Images/delete.gif"
                    UpdateImageUrl="~/Contents/Images/OK.gif" CancelImageUrl="~/Contents/Images/Cancel.gif" ItemStyle-Wrap="false" />

            </Columns>
            <PagerStyle CssClass="pagination-ys" HorizontalAlign="Center" />
        </asp:GridView>
    </div>

    <asp:ObjectDataSource ID="odsSinhVien" runat="server" 
        SelectMethod="getAll" TypeName="WebQLDaoTao.Models.SinhVienDAO"
        DataObjectTypeName="WebQLDaoTao.Models.SinhVien"
        UpdateMethod="Update" DeleteMethod="Delete"></asp:ObjectDataSource>

</asp:Content>
