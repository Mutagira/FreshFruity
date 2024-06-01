<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FreshFruity.User._default" %>
<%@ Import Namespace="FreshFruity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



      <!-- Featurs Section Start -->
   <div class="container-fluid featurs py-5">
       <div class="container py-5">
           <div class="row g-4">
               <div class="col-md-6 col-lg-3">
                   <div class="featurs-item text-center rounded bg-light p-4">
                       <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
                           <i class="fas fa-car-side fa-3x text-white"></i>
                       </div>
                       <div class="featurs-content text-center">
                           <h5>Free Shipping</h5>
                           <p class="mb-0">Free on order over $65</p>
                       </div>
                   </div>
               </div>
               <div class="col-md-6 col-lg-3">
                   <div class="featurs-item text-center rounded bg-light p-4">
                       <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
                           <i class="fas fa-user-shield fa-3x text-white"></i>
                       </div>
                       <div class="featurs-content text-center">
                           <h5>Security Payment</h5>
                           <p class="mb-0">100% security payment</p>
                       </div>
                   </div>
               </div>
               <div class="col-md-6 col-lg-3">
                   <div class="featurs-item text-center rounded bg-light p-4">
                       <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
                           <i class="fas fa-exchange-alt fa-3x text-white"></i>
                       </div>
                       <div class="featurs-content text-center">
                           <h5>7 Day Return</h5>
                           <p class="mb-0">7 day money guarantee</p>
                       </div>
                   </div>
               </div>
               <div class="col-md-6 col-lg-3">
                   <div class="featurs-item text-center rounded bg-light p-4">
                       <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
                           <i class="fa fa-phone-alt fa-3x text-white"></i>
                       </div>
                       <div class="featurs-content text-center">
                           <h5>24/7 Support</h5>
                           <p class="mb-0">Support every time fast</p>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </div>
   <!-- Featurs Section End -->
     <!-- Banner Section Start-->
        <div class="container-fluid banner bg-secondary my-5">
            <div class="container py-5">
                <div class="row g-4 align-items-center">
                    <div class="col-lg-6">
                        <div class="py-4">
                            <h1 class="display-3 text-white">Fresh Exotic Fruits</h1>
                            <p class="fw-normal display-3 text-dark mb-4">in Our Store</p>
                            <p class="mb-4 text-dark">These exotic fruits offer a variety of unique flavors and textures, making them delightful additions to any fruit lover's repertoire.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="position-relative">
                            <img src="../Templetefiles/img/baner-1.png" class="img-fluid w-100 rounded" alt="">
                            <div class="d-flex align-items-center justify-content-center bg-white rounded-circle position-absolute" style="width: 140px; height: 140px; top: 0; left: 0;">
                                <h1 style="font-size: 100px;">1</h1>
                                <div class="d-flex flex-column">
                                    <span class="h2 mb-0">10$</span>
                                    <span class="h4 text-muted mb-0">kg</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Banner Section End -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="text-center mx-auto mb-5" style="max-width: 700px;">
                <h1 class="display-4">Bestseller Products</h1>
                <p>Discover our best-selling products.</p>
            </div>
            <div class="row g-4">
                <asp:Repeater ID="rCategory" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-3">
                            <div class="p-4 rounded bg-light">
                                <div class="row align-items-center">
                                    <div class="col-6">
                                        <a href='<%# "shop.aspx?id=" + Eval("CategoryId") %>'>
                                            <img src='<%# Utils.GetImageUrl(Eval("ImageUrl")) %>' class="img-fluid rounded-circle w-100" alt="">
                                        </a>
                                    </div>
                                    <div class="col-6">
                                        <a href="#" class="h5"><%# Eval("Name") %></a>
                                       <div class="d-flex my-3">
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                        <h4 class="mb-3">20% off</h4>
                                        <a href='<%# "shop.aspx?id=" + Eval("CategoryId") %>' class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>

      <!-- Fact Start -->
        <div class="container-fluid py-5">
            <div class="container">
                <div class="bg-light p-5 rounded">
                    <div class="row g-4 justify-content-center">
                        <div class="col-md-6 col-lg-6 col-xl-3">
                            <div class="counter bg-white rounded p-5">
                                <i class="fa fa-users text-secondary"></i>
                                <h4>satisfied customers</h4>
                                <h1>196k</h1>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-xl-3">
                            <div class="counter bg-white rounded p-5">
                                <i class="fa fa-users text-secondary"></i>
                                <h4>quality of service</h4>
                                <h1>99%</h1>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-xl-3">
                            <div class="counter bg-white rounded p-5">
                                <i class="fa fa-users text-secondary"></i>
                                <h4>quality certificates</h4>
                                <h1>33</h1>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-xl-3">
                            <div class="counter bg-white rounded p-5">
                                <i class="fa fa-users text-secondary"></i>
                                <h4>Available Products</h4>
                                <h1>1k</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fact Start -->


        <!-- Tastimonial Start -->
        <div class="container-fluid testimonial py-5">
            <div class="container py-5">
                <div class="testimonial-header text-center">
                    <h4 class="text-primary">Our Testimonial</h4>
                    <h1 class="display-5 mb-5 text-dark">Our Client Saying!</h1>
                </div>
                <div class="owl-carousel testimonial-carousel">
                    <div class="testimonial-item img-border-radius bg-light rounded p-4">
                        <div class="position-relative">
                            <i class="fa fa-quote-right fa-2x text-secondary position-absolute" style="bottom: 30px; right: 0;"></i>
                            <div class="mb-4 pb-4 border-bottom border-secondary">
                                <p class="mb-0">Our clients appreciate the nutritious, versatile, and flavorful selection of fruits and vegetables, which significantly enhance their health and dining experiences.
                                </p>
                            </div>
                            <div class="d-flex align-items-center flex-nowrap">
                                <div class="bg-secondary rounded">
                                    <img src="../Templetefiles/img/testimonial-1.jpg" class="img-fluid rounded" style="width: 100px; height: 100px;" alt="">
                                </div>
                                <div class="ms-4 d-block">
                                    <h4 class="text-dark">Jenifer</h4>
                                    <p class="m-0 pb-3">Manager</p>
                                    <div class="d-flex pe-5">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item img-border-radius bg-light rounded p-4">
                        <div class="position-relative">
                            <i class="fa fa-quote-right fa-2x text-secondary position-absolute" style="bottom: 30px; right: 0;"></i>
                            <div class="mb-4 pb-4 border-bottom border-secondary">
                                <p class="mb-0">Choosing these fruits and vegetables ensures nutritious, versatile, and flavorful options that promote overall health.
                                </p>
                            </div>
                            <div class="d-flex align-items-center flex-nowrap">
                                <div class="bg-secondary rounded">
                                    <img src="../Templetefiles/img/testimonial-11.png" class="img-fluid rounded" style="width: 100px; height: 100px;" alt="">
                                </div>
                                <div class="ms-4 d-block">
                                    <h4 class="text-dark">John</h4>
                                    <p class="m-0 pb-3">Mart Owner</p>
                                    <div class="d-flex pe-5">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item img-border-radius bg-light rounded p-4">
                        <div class="position-relative">
                            <i class="fa fa-quote-right fa-2x text-secondary position-absolute" style="bottom: 30px; right: 0;"></i>
                            <div class="mb-4 pb-4 border-bottom border-secondary">
                                <p class="mb-0">High-quality fruits and vegetables, recognizing their importance in attracting and satisfying customers.
                                </p>
                            </div>
                            <div class="d-flex align-items-center flex-nowrap">
                                <div class="bg-secondary rounded">
                                    <img src="../Templetefiles/img/testimonial-10.png" class="img-fluid rounded" style="width: 100px; height: 100px;" alt="">
                                </div>
                                <div class="ms-4 d-block">
                                    <h4 class="text-dark">Lisa</h4>
                                    <p class="m-0 pb-3">Marketing Profession</p>
                                    <div class="d-flex pe-5">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Tastimonial End -->






</asp:Content>
