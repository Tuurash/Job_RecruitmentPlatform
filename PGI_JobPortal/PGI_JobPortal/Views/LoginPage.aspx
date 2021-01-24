<%@ Page Title="" Language="C#" MasterPageFile="PGI_Master.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="PGI_JobPortal.Views.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Header Start -->
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-header">
                        <h3>Login
                            <p id="msgErrorUser" runat="server" style="color: red;" visible="false">User Not Found! Please Register <a href="RegistrationPage.aspx">here,</a></p>
                        </h3>
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
                        <h3>Login
                        </h3>
                        <div class="login-form">

                            <div class="form-group">
                                <div class="input-icon">
                                    <i class="lni-user"></i>
                                    <input type="text" id="txtPhoneNumber" runat="server" class="form-control" name="email" width="50%" placeholder="Your Phone Number" required>
                                </div>
                                <div align="right"><a id="btnGetOTP" runat="server" href="#" class="btn btn-dark" style="margin-top: -5px; width: 100%" onblur="fetching" onserverclick="btnGetOTP_ServerClick" tooltip="OTP can be save and used as a password or can be generated mutiple times" width="30%">get OTP</a></div>
                            </div>

                            <div class="form-group">
                                <div class="input-icon" runat="server" id="divOTP">

                                    <i class="lni-lock"></i>
                                    <input type="text" runat="server" id="txtOTP" maxlength="6" class="form-control" onwaiting="OTP can be save and used as a password or can be generated mutiple times" placeholder="One time OTP" required>
                                </div>
                            </div>

                            <div class="form-group form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Remember Me</label>
                            </div>

                            <asp:Button ID="btnlogin" runat="server" CssClass="btn btn-common log-btn" Text="log in" OnClick="btnlogin_Click" />

                            <div align="center">

                                <asp:ImageButton ID="gLogin" runat="server" ImageUrl="~/Views/assets/img/google-logo.png" Style="border-radius: 40px"
                                    ImageAlign="AbsMiddle" OnClick="gLogin_Click" CssClass="btn btn-rm btn-border-filled" />
                                <p style="font-size: 10px;">login with google</p>

                            </div>

                        </div>
                        <br />

                        <ul class="form-links">
                            <li class="text-center"><a href="RegistrationPage.aspx">Don't have an account?</a></li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Content section End -->



</asp:Content>
