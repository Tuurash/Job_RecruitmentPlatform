<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_DashboardMaster.Master" AutoEventWireup="true" CodeBehind="UserProfilePage.aspx.cs" Inherits="PGI_JobPortal.Views.UserProfilePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function clk() {
            document.getElementById("FileUpload1").click();
        }
    </script>

    <div align="center">
        <h3>User Profile</h3>
    </div>
    <!-- Main container Start -->
    <div class="about section">
        <div class="container">
            <div class="row">

                <div class="col-lg-4 col-md-4 col-xs-12">
                    <p>
                        <%-- <img class="img-fluid float-right" src="assets/img/about/img1.jpg" alt="">--%>
                        <asp:Image Height="250px" Width="220px" ID="ProfilePic" runat="server" ImageUrl="assets/img/about/img1.jpg" Style="border-radius: 15px" />
                    </p>
                    <p>
                        <asp:FileUpload ID="FileUpload1" CssClass="form-control" Width="220px" runat="server" />

                        <asp:Button ID="btnUpload" runat="server" Width="220px" CssClass="link" Text="change" />

                    </p>
                    <div align="center"></div>
                    <p>
                        <br />
                        <br />

                        <a id="btnCnctGoogle" class="btn" style="background-color: dodgerblue; height: 40px; width: 220px" onserverclick="btnCnctGoogle_ServerClick" runat="server">
                            <asp:Image ImageUrl="~/Views/assets/img/google-logo.png" runat="server" />
                            connect Google</a>

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

                                    <div class="form-group" style="display: flex; flex-direction: row; justify-content: center; align-items: center">

                                        <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name" CssClass="form-control" Width="50%"></asp:TextBox>
                                        &nbsp&nbsp                                      
                                        <asp:TextBox ID="txtLastName" placeholder="Last Name" runat="server" CssClass="form-control" Width="50%"></asp:TextBox>
                                    </div>

                                    <div class="form-group" style="display: flex; flex-direction: row; justify-content: center; align-items: center">

                                        <asp:DropDownList ID="GenderDropdown" runat="server" CssClass="form-control" Width="50%">
                                            <asp:ListItem Text="select Gender" Value="" />
                                            <asp:ListItem Text="Male" Value="Male" />
                                            <asp:ListItem Text="Female" Value="Female" />
                                            <asp:ListItem Text="other" Value="other" />
                                        </asp:DropDownList>
                                        &nbsp&nbsp                                      
                                        <asp:DropDownList ID="DropDownMaritalStatus" runat="server" CssClass="form-control" Width="50%">
                                            <asp:ListItem Text="Marital Status" Value="" />
                                            <asp:ListItem Text="Unmarried" Value="Male" />
                                            <asp:ListItem Text="Married" Value="Female" />
                                            <asp:ListItem Text="Widowed" Value="other" />
                                        </asp:DropDownList>

                                    </div>


                                    <label style="font-size: small;">Date Of Birth</label>
                                    <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>

                                    <label style="font-size: small;">NID</label>
                                    <asp:TextBox ID="txtNID" runat="server" CssClass="form-control"></asp:TextBox>

                                    <label style="font-size: small;">Passport No:</label>
                                    <asp:TextBox ID="txtPassportNo" runat="server" CssClass="form-control"></asp:TextBox>

                                    <label style="font-size: small;">Mobile No:</label>
                                    <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="form-control" MaxLength="11"></asp:TextBox>

                                    <label style="font-size: small;">Present Address:</label>
                                    <asp:TextBox ID="txtPresentAddress" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>

                                    <label style="font-size: small;">Permanent Address:</label>
                                    <asp:TextBox ID="txtPermanentAddress" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni delectus soluta adipisci beatae ullam quisquam, quia recusandae rem assumenda, praesentium porro sequi eaque doloremque tenetur incidunt officiis explicabo optio perferendis.</p>
                                    <p>
                                        <asp:Button ID="btnSubmitPersonalInfo" Text="Apply" runat="server" CssClass="btn btn-info" OnClick="btnSubmitPersonalInfo_Click" />
                                    </p>
                                </div>

                                <%--Academic--%>
                                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">

                                    <%--Education List--%>
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-xs-12">
                                            <a class="job-listings-featured" href="#">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-xs-12">
                                                        <div class="job-details">
                                                            <h2>Masters</h2>
                                                            <span class="company-neme">Computer Science</span>
                                                            <div class="tags">
                                                                <span><i class="lni-map-marker"></i>MizTech University</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-xs-12 text-right">
                                                        <div class="tag-type">
                                                            <span class="part-time">4.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>

                                    </div>
                                    <%-- End Education List--%>

                                    <div class="form-group" style="display: flex; flex-direction: row; justify-content: center; align-items: center">

                                        <asp:DropDownList ID="DropDownEducationLevel" runat="server" CssClass="form-control" Width="50%">
                                            <asp:ListItem Text="Education Level" Value="" />
                                            <asp:ListItem Text="PHD" Value="PHD" />
                                            <asp:ListItem Text="Bachelors" Value="Bachelors" />
                                            <asp:ListItem Text="Masters" Value="Masters" />
                                            <asp:ListItem Text="HSC" Value="HSC" />
                                            <asp:ListItem Text="SSC" Value="SSC" />
                                            <asp:ListItem Text="Training" Value="Training" />
                                            <asp:ListItem Text="Other" Value="Other" />
                                        </asp:DropDownList>
                                        &nbsp&nbsp                                      
                                        <asp:TextBox ID="txtResult" placeholder="Result" runat="server" Width="50%" CssClass="form-control"></asp:TextBox>
                                    </div>

                                    <div class="form-group" style="display: flex; flex-direction: row; justify-content: center; align-items: center">

                                        <asp:TextBox ID="txtMajor" placeholder="Group/Major" runat="server" Width="50%" CssClass="form-control"></asp:TextBox>
                                        &nbsp&nbsp                                      
                                        <asp:TextBox ID="txtPassingYear" placeholder="Result" runat="server" Width="50%" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                    </div>

                                    <label style="font-size: small;">Institute Name:</label>
                                    <asp:TextBox ID="txtInstituteName" runat="server" CssClass="form-control"></asp:TextBox>

                                    <label style="font-size: small;">Duration:</label>
                                    <asp:TextBox ID="txtDuration" runat="server" CssClass="form-control"></asp:TextBox>

                                    <label style="font-size: small;">Achievement:</label>
                                    <asp:TextBox ID="txtAchievement" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>



                                    <p></p>
                                    <p>
                                        <asp:Button ID="btnAddEducationInfo" Text="Apply" runat="server" CssClass="btn btn-info" OnClick="btnAddEducationInfo_Click" />
                                    </p>

                                </div>

                                <%--Employment--%>
                                <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">

                                    <%--Emplyment List--%>
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-xs-12">
                                            <a class="job-listings-featured" href="#">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-xs-12">
                                                        <div class="job-details">
                                                            <h2>Jr.Developer</h2>
                                                            <span class="company-neme">2000-2015</span>
                                                            <div class="tags">
                                                                <span><i class="lni-map-marker"></i>Google</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-xs-12 text-right">
                                                        <div class="tag-type">
                                                            <span class="part-time">15 years</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>

                                    </div>
                                    <%-- End Emplyment List--%>

                                    <label style="font-size: small;">Company Name:</label>
                                    <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control"></asp:TextBox>

                                    <label style="font-size: small;">Company Location:</label>
                                    <asp:TextBox ID="txtCompanyLocation" runat="server" CssClass="form-control"></asp:TextBox>

                                    <label style="font-size: small;">Company Type:</label>
                                    <asp:TextBox ID="txtCompanyType" runat="server" CssClass="form-control"></asp:TextBox>
                                    <br />

                                    <div class="form-group" style="display: flex; flex-direction: row; justify-content: center; align-items: center">

                                        <asp:TextBox ID="txtDepartment" placeholder="Department" runat="server" Width="50%" CssClass="form-control"></asp:TextBox>
                                        &nbsp&nbsp                                      
                                        <asp:TextBox ID="txtDesignation" placeholder="Designation" runat="server" Width="50%" CssClass="form-control"></asp:TextBox>
                                    </div>

                                    <label style="font-size: small;">Responsibilities:</label>
                                    <asp:TextBox ID="txtResponsibilities" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>

                                    <label style="font-size: small;">Employment Period:</label>
                                    <div class="form-group" style="display: flex; flex-direction: row; justify-content: center; align-items: center">

                                        <asp:TextBox ID="txtEmpFrom" placeholder=" From" runat="server" Width="50%" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                        &nbsp&nbsp                                      
                                        <asp:TextBox ID="txtEmpTo" placeholder=" To" runat="server" Width="50%" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                    </div>

                                    <p></p>
                                    <p>
                                        <asp:Button ID="btnAddEmployment" Text="Apply" runat="server" CssClass="btn btn-info" OnClick="btnAddEmployment_Click" />
                                    </p>

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
