<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ItemDetails.aspx.cs" Inherits="RentalSoftware.ItemDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row m-2">
        <div class="col-md-12">
            <div class="form-group">
            <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="Add" CssClass="form-control"/>
                </div>
        </div>
    </div>
    <div class="row m-2">
        <div class="col-md-12">
            &nbsp;<asp:GridView ID="GridViewItem" runat="server" CssClass="table table-active">
            </asp:GridView>
        </div>
    </div>
</asp:Content>
