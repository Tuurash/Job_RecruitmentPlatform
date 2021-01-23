<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_DashboardMaster.Master" AutoEventWireup="true" CodeBehind="ApplicationDashboard.aspx.cs" Inherits="PGI_JobPortal.Views.ApplicationDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <h2 style="font-size: 25px;">
            <asp:Label ID="lblHeader" runat="server" Text="One More step"></asp:Label></h2>
    </div>

    <!-- Contact Section Start -->
    <section id="contact" class="section">
        <div class="contact-form">
            <div class="container">
                <div class="row contact-form-area">

                    <div class="col-md-12 col-lg-12 col-sm-12">
                        <div class="contact-right-area wow fadeIn">
                            <h2>Your CV</h2>
                            <br />
                            <embed id="EmbedResume" runat="server" src="../FIle/other/Sample.pdf" class="col-md-12" style="height: 300px" />
                        </div>
                    </div>

                    <div class="col-md-12 col-lg-12 col-sm-12">
                        <div class="contact-block">
                            <asp:Label ID="lblCandidateCode" runat="server" Visible="false"></asp:Label>
                            <br />
                            <h2>Confirm Information</h2>

                            <div id="contactForm">
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="txtName" name="name" placeholder="Full Name" runat="server" required data-error="Please enter your name">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" placeholder="Email" id="txtEmail" class="form-control" name="name" runat="server" required data-error="Please enter your email">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" placeholder="Your active Phone numer" id="txtPhoneNumber" runat="server" class="form-control" required data-error="You must provide your phone number">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblFilePath" runat="server" Visible="false"></asp:Label>

                                            <div runat="server" id="divResumeUpload" visible="false">

                                                <asp:FileUpload ID="FileResume" runat="server" CssClass="form-control" />
                                                <asp:Button ID="btnUpload" runat="server" Text="Upload" BackColor="SteelBlue" OnClick="btnUpload_Click" CssClass="btn btn-block" />

                                            </div>

                                            <asp:Button ID="btnChange" runat="server" Visible="true" Text="Change Resume" BackColor="SteelBlue" OnClick="btnChange_Click" CssClass="btn btn-block" />


                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">

                                            <textarea class="form-control" id="txtCoverLetter" runat="server" placeholder="Anything more to add (Cover Letter)-optional" rows="5"></textarea>

                                        </div>

                                        <div class="submit-button">
                                            <asp:Button ID="btnApply" runat="server" CssClass="btn btn-success" Text="Submit Application" OnClick="btnApply_Click" />
                                            <div id="msgSubmit" class="h3 text-center hidden"></div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    

                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

</asp:Content>

