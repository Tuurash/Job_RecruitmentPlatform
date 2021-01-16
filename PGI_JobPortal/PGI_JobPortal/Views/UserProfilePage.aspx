<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_DashboardMaster.Master" AutoEventWireup="true" CodeBehind="UserProfilePage.aspx.cs" Inherits="PGI_JobPortal.Views.UserProfilePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div align="center"><h3>User Profile</h3></div>
    <!-- Main container Start -->
    <div class="about section">
        <div class="container">
            <div class="row">

                <div class="col-lg-4 col-md-4 col-xs-12">
                    <p>
                        <%-- <img class="img-fluid float-right" src="assets/img/about/img1.jpg" alt="">--%>
                        <asp:ImageButton class="img-fluid float-right" ID="btnProfilePic" runat="server" ImageUrl="assets/img/about/img1.jpg" />
                    </p>
                </div>

                <div class="col-lg-8 col-md-8 col-xs-12">

                    <div class="about-content">


                        <%--Tabs--%>
                        <div>
                            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Personal Info</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Academic</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Employment</a>
                                </li>
                            </ul>


                            <div class="tab-content" id="pills-tabContent">

                                <%--Personal Info Tab--%>
                                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                    <p>
                                        <label>Name:</label>
                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>

                                        <label>Name:</label>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

                                        <label>Name:</label>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>

                                        <label>Name:</label>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>

                                        <label>Name:</label>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                                    </p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni delectus soluta adipisci beatae ullam quisquam, quia recusandae rem assumenda, praesentium porro sequi eaque doloremque tenetur incidunt officiis explicabo optio perferendis.</p>
                                    <p><a href="#" class="btn btn-common">Change</a></p>
                                </div>

                                <%--Academic--%>
                                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">

                                    <p>
                                        <label>Name:</label>
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>

                                        <label>Name:</label>
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>

                                        <label>Name:</label>
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>

                                        <label>Name:</label>
                                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>

                                        <label>Name:</label>
                                        <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
                                    </p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni delectus soluta adipisci beatae ullam quisquam, quia recusandae rem assumenda, praesentium porro sequi eaque doloremque tenetur incidunt officiis explicabo optio perferendis.</p>
                                    <p><a href="#" class="btn btn-common">Change</a></p>

                                </div>

                                <%--Employment--%>
                                <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">

                                    <p>
                                        <label>Name:</label>
                                        <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>

                                        <label>Name:</label>
                                        <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox>

                                        <label>Name:</label>
                                        <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"></asp:TextBox>

                                        <label>Name:</label>
                                        <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control"></asp:TextBox>

                                        <label>Name:</label>
                                        <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control"></asp:TextBox>
                                    </p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni delectus soluta adipisci beatae ullam quisquam, quia recusandae rem assumenda, praesentium porro sequi eaque doloremque tenetur incidunt officiis explicabo optio perferendis.</p>
                                    <p><a href="#" class="btn btn-common">Change</a></p>

                                </div>
                            </div>
                        </div>



                    </div>

                </div>

            </div>
        </div>
    </div>
    <!-- Main container End -->

</asp:Content>
