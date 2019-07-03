<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="RentalSoftware.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Add Item</h1>
          </div>

    <div class="row">
        <div class="col-md-12">
             <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Add Item</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      
                    </a>
                 
                  </div>
                </div>
                   <!-- Card Body -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                  <asp:Label ID="Label1" runat="server" Text="ItemName"></asp:Label>
             <asp:TextBox ID="TxtItemname" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                            </div>
                        </div>
                    <div class="row">
                        <div class="col-md-3">
                             <div class="form-group">
                                 <asp:Label ID="Label2" runat="server" Text="RentRate"></asp:Label>
            <asp:TextBox ID="TxtRentrate" runat="server" CssClass="form-control text-right" TextMode="Number"></asp:TextBox>
                                 </div>
                        </div>
                        </div>
                     <div class="row">
                        <div class="col-md-3">
                             <div class="form-group">
                                   <asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label>
    <asp:TextBox ID="TxtQuantity" runat="server" CssClass="form-control text-right"></asp:TextBox>
                                 </div>
                        </div>
                        </div>
                     <div class="row">
                        <div class="col-md-2">
                             <div class="form-group">
                                 <asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" ValidationGroup="b" CssClass="form-control btn btn-outline-primary" />
                                 </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                 <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" CssClass="form-control btn btn-outline-primary" />
                                 <asp:Label ID="LblMessage" runat="server" Visible="False"></asp:Label>
                                    </div>
                            </div>
                         </div>
                    </div>
                 </div>
            </div>
        </div>
    

</asp:Content>
