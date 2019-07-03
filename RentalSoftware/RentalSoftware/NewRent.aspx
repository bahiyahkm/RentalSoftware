<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NewRent.aspx.cs" Inherits="RentalSoftware.NewRent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Add RentDetails</h1>
          </div>

    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Add RentDetails</h6>
                    <div class="dropdown no-arrow">
                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                    </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="RentTransactionNo"></asp:Label>
                                <asp:TextBox ID="TxtRentTransno" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" Text="Item Name"></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <asp:Label ID="Label7" runat="server" Text="Customer Name"></asp:Label>
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <asp:Label ID="Label8" runat="server" Text="Start Date"></asp:Label>
                                <asp:TextBox ID="TxtStart" runat="server" TextMode="Date" CssClass="form-control" OnTextChanged="TxtStart_TextChanged"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <asp:Label ID="Label9" runat="server" Text="End Date"></asp:Label>
                                <asp:TextBox ID="TxtEnd" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-2">
                            <div class="form-group">
                                <asp:Button ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click" CssClass="form-control btn btn-outline-primary" />
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" CssClass="form-control btn btn-outline-primary" />
                                <asp:Label ID="Lblitem" runat="server" Visible="False"></asp:Label>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </div>
    </div>


               
     
</asp:Content>
