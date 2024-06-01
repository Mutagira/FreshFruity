<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="FreshFruity.User.Contact" %>
<%@ Import Namespace="FreshFruity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none"
            }, seconds * 1000);
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Contact Start -->
    <div class="container-fluid contact py-5">
        <div class="container py-5">

            <div class="align-self-end">
                <asp:Label runat="server" ID="lblMsg"></asp:Label>
            </div>
            

            <div class="p-5 bg-light rounded">
                <div class="row g-4">
                    <div class="col-12">
                        <div class="text-center mx-auto" style="max-width: 700px;">
                            <h1 class="text-primary">Get in touch</h1>
                            <p class="mb-4">To get in touch with FreshFruity, visit our website or reach out to us via email or phone. We're always available to assist you with any inquiries or support you may need regarding our fresh and delicious fruits.</p>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="h-100 rounded">
                            <iframe class="rounded w-100"
                                style="height: 400px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387191.33750346623!2d-73.97968099999999!3d40.6974881!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1694259649153!5m2!1sen!2sbd"
                                loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                    <div class="col-lg-7">

                        <asp:TextBox ID="txtName" runat="server" CssClass="w-100 form-control border-0 py-3 mb-4" placeholder=" Enter Your Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is required" ControlToValidate="txtName"
                            ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>


                        <asp:TextBox ID="txtEmail" runat="server" CssClass="w-100 form-control border-0 py-3 mb-4" placeholder=" Enter Your Email" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Name is required" ControlToValidate="txtEmail"
                            ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                        <asp:TextBox ID="txtSubject" runat="server" CssClass="w-100 form-control border-0 py-3 mb-4" placeholder="Subject"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Subject is required" ControlToValidate="txtSubject"
                            ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                        <asp:TextBox ID="txtMessage" runat="server" CssClass="w-100 form-control border-0 py-3 mb-4" placeholder=" Enter Your Query or Feedback"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Message is required" ControlToValidate="txtMessage"
                            ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="w-100 btn form-control border-secondary py-3 bg-white text-primary"
                            Onclick="btnSubmit_Click"/>

                      
                    </div>
                    <div class="col-lg-5">
                        <div class="d-flex p-4 rounded mb-4 bg-white">
                            <i class="fas fa-map-marker-alt fa-2x text-primary me-4"></i>
                            <div>
                                <h4>Address</h4>
                                <p class="mb-2">123 Street Lahore Pakistan</p>
                            </div>
                        </div>
                        <div class="d-flex p-4 rounded mb-4 bg-white">
                            <i class="fas fa-envelope fa-2x text-primary me-4"></i>
                            <div>
                                <h4>Mail Us</h4>
                                <p class="mb-2">info@example.com</p>
                            </div>
                        </div>
                        <div class="d-flex p-4 rounded bg-white">
                            <i class="fa fa-phone-alt fa-2x text-primary me-4"></i>
                            <div>
                                <h4>Telephone</h4>
                                <p class="mb-2">(+012) 3456 7890</p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->

</asp:Content>
