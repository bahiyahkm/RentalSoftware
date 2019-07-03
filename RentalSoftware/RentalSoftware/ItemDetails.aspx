<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ItemDetails.aspx.cs" Inherits="RentalSoftware.ItemDetails" %>
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
                    <h6 class="m-0 font-weight-bold text-primary">Item Details</h6>
                    <div class="dropdown no-arrow">
                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                        <div class="col-md-3">
                            <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="Add" CssClass=" btn btn-info" />
                        </div>
                    </div>
                </div>
                <!--Card Body-->
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-10">
                            <asp:GridView ID="GridViewItem" runat="server" CssClass="table table-active" AutoGenerateColumns="False" OnRowCommand="GridViewItem_RowCommand" OnRowEditing="GridViewItem_RowEditing" OnRowUpdating="GridViewItem_RowUpdating">
                                <Columns>
                                    <asp:TemplateField HeaderText="Item Name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtEditItemName" runat="server" Text='<%# Eval("ItemName") %>'></asp:TextBox>
                                            <br />
                                            <asp:HiddenField ID="hdItemId" runat="server" Value='<%# Eval("ItemId") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Unit Rate">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtrentrate" runat="server" Text='<%# Eval("RentRate") %>'></asp:TextBox>
                                            <br />
                                            <%--<asp:HiddenField ID="hdItemrate" runat="server" Value='<%# Eval("ItemId") %>' />--%>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("RentRate") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Qty">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtquantity" runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                                            <br />
                                           <%-- <asp:HiddenField ID="hdItemqty" runat="server" Value='<%# Eval("ItemId") %>' />--%>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <EditItemTemplate>
                                            <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("ItemId") %>' CommandName="Update">Update</asp:LinkButton>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("ItemId") %>' CommandName="Edit">Edit</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <EditItemTemplate>
                                            <br />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("ItemId") %>' CommandName="dlt">Delete</asp:LinkButton>
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
</asp:Content>
