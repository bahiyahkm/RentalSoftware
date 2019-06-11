<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="RentalSoftware.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="ItemName"></asp:Label>
             <asp:TextBox ID="TxtItemname" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
       <div class="col-sm-3">
            <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="RentRate"></asp:Label>
            <asp:TextBox ID="TxtRentrate" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
       <div class="col-sm-3">
    <asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label>
    <asp:TextBox ID="TxtQuantity" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
                    </div>
                </div>
            </div>
        </div>
    <div class="row m-2">
        <asp:Button ID="BtnAdd" runat="server" Text="Add" CssClass="btn-primary" OnClick="BtnAdd_Click" ValidationGroup="b" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnCancel" runat="server" Text="Cancel" CssClass="btn-warning" OnClick="BtnCancel_Click" />
        &nbsp;&nbsp;&nbsp;<asp:Label ID="LblMessage" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
