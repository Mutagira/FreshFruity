<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="FreshFruity.User.Shop" %>

<%@ Import Namespace="FreshFruity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   <!-- Single Page Header start -->
    <div class="container-fluid page-header py-5">
        <h1 class="text-center text-white display-6">Shop</h1>
        <ol class="breadcrumb justify-content-center mb-0">
            <li class="breadcrumb-item"><a href="default.aspx">Home</a></li>
            <li class="breadcrumb-item"><a href="Cart.aspx">Order Now</a></li>
            <li class="breadcrumb-item active text-white">Shop</li>
        </ol>
    </div>
    <!-- Single Page Header End -->
    <div class="container-fluid fruite py-5">
   
    <div class="container py-5">
        <div class="tab-class text-center">
            <div class="row g-4">
                <div class="col-lg-4 text-start">
                    <div class="align-self-end">
                        <asp:Label ID="lblMsg" runat="server" visible="false"></asp:Label>
                    </div>
                    <h1>Our Organic Products</h1>
                </div>
                <div class="col-lg-8 text-end">
                    <ul class="nav nav-pills d-inline-flex text-center mb-5"></ul>
                </div>
            </div>
        </div>

        <!-- Category Filter Start -->
        <div class="row">
            <ul class="filter_menu d-flex justify-content-start">
                <li class="active mx-2" data-filter="all">All</li>
                <asp:Repeater ID="rCategory" runat="server">
                    <ItemTemplate>
                        <li class="mx-2" data-filter="<%# Regex.Replace(Eval("Name").ToString().ToLower(), @"\s+", "") %>">
                            <%# Eval("Name") %>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
        <!-- Category Filter End -->

        <!-- Product List Start -->
        <div class="row" id="productContainer">
            <asp:Repeater ID="rproducts" runat="server" OnItemCommand="rProduct_ItemCommand">
                <ItemTemplate>
                    <div class="col-md-6 col-lg-4 mb-4 product-item <%# Regex.Replace(Eval("CategoryName").ToString().ToLower(), @"\s+", "") %>">
                        <div class="rounded position-relative fruite-item d-flex flex-column align-items-center">
                            <div class="fruite-img" style="width: 100%;">
                                <img src="<%# Utils.GetImageUrl(Eval("ImagUrl")) %>" alt="" style="width: 100%; height: auto; object-fit: cover;">
                            </div>
                            <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">
                                <%# Eval("CategoryName") %>
                            </div>
                            <div class="p-4 border border-secondary border-top-0 rounded-bottom text-center w-100">
                                <h4 class="text-right"><%# Eval("Name") %></h4>
                                <p class="text-right"><%# Eval("Description") %></p>
                                <div class="d-flex justify-content-between">
                                    <p class="mb-0"><strong>Rs.<%# Eval("Price")%>/kg</strong></p>
                                    <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CommandName="AddToCart" CommandArgument='<%# Eval("ProductId") %>' />
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <!-- Product List End -->
    </div>
</div>


    <!-- JavaScript for Filtering -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var filterMenu = document.querySelector(".filter_menu");
            var productContainer = document.getElementById("productContainer");

            filterMenu.addEventListener("click", function (event) {
                if (event.target.tagName === "LI") {
                    var filter = event.target.getAttribute("data-filter");
                    var items = productContainer.querySelectorAll(".product-item");

                    items.forEach(function (item) {
                        if (filter === "all" || item.classList.contains(filter)) {
                            item.style.display = "block";
                        } else {
                            item.style.display = "none";
                        }
                    });

                    // Remove 'active' class from all filter menu items
                    filterMenu.querySelectorAll("li").forEach(function (menuItem) {
                        menuItem.classList.remove("active");
                    });

                    // Add 'active' class to the clicked filter menu item
                    event.target.classList.add("active");
                }
            });
        });
    </script>

</asp:Content>
