<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_Master.Master" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="PGI_JobPortal.Views.RegistrationPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Header Start -->
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-header">
                        <h3>Registration</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Content section Start -->
    <section id="content" class="section-padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5 col-md-6 col-xs-12">
                    <div class="page-login-form box">
                        <h3>Registration
                        </h3>
                        <div class="contactForm">
                            <div class="form-group" style="display: flex; flex-direction: row; justify-content: center; align-items: center">

                                <input type="text" runat="server" id="txtFirstName" class="form-control" style="width: 178px" name="email" placeholder="First Name" required>&nbsp&nbsp&nbsp&nbsp
                                    <input type="text" runat="server" id="txtLastName" class="form-control" style="width: 178px" name="email" placeholder="Last Name" required>
                            </div>

                            <div class="form-group">
                                <input id="txtEmail" class="form-control" style="width: 380px" placeholder="Your Email" required><br />
                                <input id="txtMobileNo" class="form-control" style="width: 380px" placeholder="Your Phone number" required>
                            </div>

                            <div class="form-group">

                                <input type="password" id="txtPassword" class="form-control" style="width: 380px" placeholder="Password " required><br />
                                <input type="password" id="txtPasswordConfirm" class="form-control" style="width: 380px" placeholder="Confirm Password" required>
                            </div>
                            <div class="form-group form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Keep Me Signed In</label>
                            </div>
                            <button class="btn btn-common log-btn">sign up</button>

                        </div>
                        <br />
                        <ul class="form-links">
                            <li class="text-center"><a href="LoginPage.aspx">Already have an account?</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Content section End -->


</asp:Content>
