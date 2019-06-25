<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="RentalSoftware.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row m-2">
        <div class="col-md-12">
            
        </div>
    </div>
    <div class="row m-2">
        <div class="col-md-12">
<div class="col-sm-12">
            
            <asp:Button ID="BtnAdd" runat="server" Text="Add" Width="72px" OnClick="BtnAdd_Click" CssClass="btn active" />
              </div>
            <asp:GridView ID="GridViewcustomer" runat="server" CssClass="table table-active">
    </asp:GridView>
            </div>
        </div>
    
</asp:Content>
