<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Rent.aspx.cs" Inherits="RentalSoftware.Rent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Rent Details</h1>
          </div>

     <div class="row">
         <div class="col-md-12">
             <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Rent Details</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      
                    </a>
                  <div class="col-md-3">
                      <asp:Button ID="BtnNew" runat="server" Text="New" OnClick="BtnNew_Click" CssClass="btn btn-info"  />
                  </div>
                                               
                     
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                 <asp:Label ID="Label2" runat="server" Text="Item Name"></asp:Label>
                                 <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" CssClass="form-control">
                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                 <asp:Label ID="Label3" runat="server" Text="Customer Name"></asp:Label>
                                <div class="col-md-10">
                <asp:TextBox ID="TxtCustomerName" runat="server" CssClass="form-control" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"  ></asp:TextBox>
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                             <asp:Button ID="BtnSearch" runat="server" Text="Search" CssClass=" btn btn-active mt-3"/>
                            
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="BtnReturn" runat="server" Text="Return" CssClass="btn btn-active mt-3" OnClick="BtnReturn_Click" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                              <asp:GridView ID="GridViewRental" runat="server" CssClass="table table-active">
            </asp:GridView>
                        </div>
                    </div>
                </div>
              </div>
         </div>
        </div> 
</asp:Content>
