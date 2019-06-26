<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="RentalSoftware.AddCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Add Customer</h1>
          </div>

    <div class="row">
        <div class="col-md-12">
             <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Add Customer</h6>
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
                                  <asp:Label ID="Label1" runat="server" Text="CustomerName"></asp:Label>
                        <asp:TextBox ID="TxtCustomername" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtCustomername" ErrorMessage="Must be required"></asp:RequiredFieldValidator>
                </div>
                            </div>
                        </div>
                    <div class="row">
                        <div class="col-md-3">
                             <div class="form-group">
                                  <asp:Label ID="Label2" runat="server" Text="CustomerAddress"></asp:Label>
                        <asp:TextBox ID="TxtAddress" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                 </div>
                        </div>
                        </div>
                     <div class="row">
                        <div class="col-md-3">
                             <div class="form-group">
                                  <asp:Label ID="Label3" runat="server" Text="CustomerPhoneNo"></asp:Label>
                        <asp:TextBox ID="TxtPhoneNo" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtPhoneNo" ErrorMessage="Invalid Phone Number" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                 
                                 </div>
                        </div>
                        </div>
                    <div class="row">
                        <div class="col-md-3">
                             <div class="form-group">
                                  <asp:Label ID="Label4" runat="server" Text="CustomerCity"></asp:Label>
                        <asp:TextBox ID="TxtCity" runat="server" CssClass="form-control"></asp:TextBox>
                                 </div>
                        </div>
                        </div>
                    <div class="row">
                        <div class="col-md-3">
                             <div class="form-group">
                                  <asp:Label ID="Label5" runat="server" Text="CustomerEmail"></asp:Label>
                        <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                 </div>
                        </div>
                        </div>
                     <div class="row">
                        <div class="col-md-2">
                             <div class="form-group">
                                  <asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" CssClass="form-control" />
                                 </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" CssClass="form-control " />
                                 <asp:Label ID="LblMessage" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </div>
                            </div>
                        
    </div>

    </div>
               
        </div>
    </div>
         </div>
</asp:Content>
