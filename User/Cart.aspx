<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="FreshFruity.User.Cart" %>

<%@ Import Namespace="FreshFruity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <section>
        <div class="book_section layout_padding">
            <div class="Container">
                <div class="heading_container">
                    <div class="aling_self_end">
                        <asp:Label ID="lmlMsg" runat="server" Visible="false"></asp:Label>
                    </div>
                    <h1>Your Shopping Cart</h1>
                </div>
            </div>
        </div>

        <div class="Container">
            <asp:Repeater ID="rCartItem" runat="server" 
                OnItemCommand="rCartItem_ItemCommand" OnItemDataBound="rCartItem_ItemDataBound">
                <HeaderTemplate>
                    <table>
                        <thead>
                            <table class="table">
                            <tr>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Unit Price</th>
                                <th>Quantity</th>
                                <th>Total Price</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </td>
                        <td>
                            <img width="60" src='<%# Utils.GetImageUrl(Eval("ImagUrl").ToString()) %>' alt="" />
                        </td>
                        <td>
                            Rs.<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            <asp:HiddenField ID="hdnProductId" runat="server" Value='<%# Eval("ProductId") %>' />
                            <asp:HiddenField ID="hdnQuantity" runat="server" Value='<%# Eval("Qty") %>' />
                            <asp:HiddenField ID="hdnPrdQuantity" runat="server" Value='<%# Eval("PrdQty") %>' />
                        </td>
                        <td>
                            <div class="product_details_option">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" Text='<%# Eval("Quantity") %>' />
                                        <asp:RegularExpressionValidator ID="revQuantity" runat="server" ErrorMessage="*"
                                            ForeColor="Red" Font-Size="Small" ValidationExpression="[1-9]*" ControlToValidate="txtQuantity"
                                            Display="Dynamic" SetFocusOnError="true" EnableClientScript="true"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>Rs.<asp:Label ID="lblTotalPrice" runat="server"></asp:Label></td>
                        <td>
                            <asp:LinkButton ID="lbldelete" runat="server" Text="Remove" CommandName="remove"
                                CommandArgument='<%# Eval("ProductId") %>' OnClientClick="return confirm('Do you want to remove this item from cart?');">
                                <i class="fa fa-close"></i>
                            </asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    <tr>
                        <td colspan="3"></td>
                        <td class="pl=lg-5">
                            <b>Grand Total:-</b>
                        </td>
                        <td>Rs.<%# Session["grandTotalPrice"] %></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="continue_btn">
                            <a href="shop.aspx" class="btn btn-info"> <i class="fa fa-arrow-circle-left mr-2"></i>Continue Shopping</a>
                        </td>
                        <td>
                            <asp:LinkButton ID="lbUpdateCart" runat="server" CommandName="updateCart" CssClass="btn btn-warning">
                                <i class="fa fa-refresh mr-2"></i>Update Cart
                            </asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="lbCheckout" runat="server" CommandName="checkout" CssClass="btn btn-warning">
                                Checkout <i class="fa fa-arrow-circle-right mr-2"></i>
                            </asp:LinkButton>
                        </td>
                    </tr>
                        </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </section>


</asp:Content>
