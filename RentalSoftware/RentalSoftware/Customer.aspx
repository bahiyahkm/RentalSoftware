<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="RentalSoftware.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Customer Details</h1>
          </div>

     <div class="row">
         <div class="col-md-12">
             <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Customer Details</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      
                    </a>
                  <div class="col-md-3">
                       <asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" CssClass="btn btn-info" />
                  </div>
                  </div>
                </div>
                 <!--Card Body-->
                  <div class="card-body">
                    <div class="row">
                        <div class="col-md-10">
                            <div style="overflow-x:auto;width:800px">
                              <asp:GridView ID="GridViewcustomer" runat="server" CssClass="table table-active" AutoGenerateColumns="False" OnRowCommand="GridViewcustomer_RowCommand"  OnRowEditing="GridViewcustomer_RowEditing" OnRowUpdating="GridViewcustomer_RowUpdating" OnSelectedIndexChanged="GridViewcustomer_SelectedIndexChanged1" HorizontalAlign="Left">
                                  <Columns>
                                      <asp:TemplateField HeaderText="Customer Name">
                                          <EditItemTemplate>
                                              <asp:TextBox ID="Txtcustname" runat="server" Text='<%# Eval("CustomerName") %>'></asp:TextBox>
                                              
                                              <asp:HiddenField ID="hdCustId" runat="server" Value='<%# Eval("CustomerId") %>' />
                                              
                                          </EditItemTemplate>
                                          <ItemTemplate>
                                              <asp:Label ID="Label1" runat="server" Text='<%# Eval("CustomerName") %>'></asp:Label>
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:TemplateField HeaderText="Customer Address">
                                          <EditItemTemplate>
                                              <asp:TextBox ID="Txtcustaddress" runat="server" Text='<%# Eval("CustomerAddress") %>'></asp:TextBox>
                                          </EditItemTemplate>
                                          <ItemTemplate>
                                              <asp:Label ID="Label2" runat="server" Text='<%# Eval("CustomerAddress") %>'></asp:Label>
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:TemplateField HeaderText="Customer PhoneNo">
                                          <EditItemTemplate>
                                              <asp:TextBox ID="Txtcustphone" runat="server" Text='<%# Eval("CustomerPhoneNo") %>'></asp:TextBox>
                                          </EditItemTemplate>
                                          <ItemTemplate>
                                              <asp:Label ID="Label3" runat="server" Text='<%# Eval("CustomerPhoneNo") %>'></asp:Label>
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:TemplateField HeaderText="Customer City">
                                          <EditItemTemplate>
                                              <asp:TextBox ID="Txtcustcity" runat="server" Text='<%# Eval("CustomerCity") %>'></asp:TextBox>
                                          </EditItemTemplate>
                                          <ItemTemplate>
                                              <asp:Label ID="Label4" runat="server" Text='<%# Eval("CustomerCity") %>'></asp:Label>
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:TemplateField HeaderText="Customer Email">
                                          <EditItemTemplate>
                                              <asp:TextBox ID="Txtcustemail" runat="server" Text='<%# Eval("CustomerEmail") %>'></asp:TextBox>
                                          </EditItemTemplate>
                                          <ItemTemplate>
                                              <asp:Label ID="Label5" runat="server" Text='<%# Eval("CustomerEmail") %>'></asp:Label>
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:TemplateField>
                                          <EditItemTemplate>
                                              <asp:LinkButton ID="LBupdate" runat="server" CommandArgument='<%# Eval("CustomerId") %>' CommandName="Update">Update</asp:LinkButton>
                                          </EditItemTemplate>
                                          <ItemTemplate>
                                              <asp:LinkButton ID="LBedit" runat="server" CommandArgument='<%# Eval("CustomerId") %>' CommandName="Edit">Edit</asp:LinkButton>
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:TemplateField>
                                          <ItemTemplate>
                                              <asp:LinkButton ID="LBdelete" runat="server" CommandArgument='<%# Eval("CustomerId") %>' CommandName="dlt">Delete</asp:LinkButton>
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                  </Columns>
            </asp:GridView>
                                </div>
                            </div>
                        </div>
                      </div>
                 </div>
             </div>
         </div>

   
    
</asp:Content>
