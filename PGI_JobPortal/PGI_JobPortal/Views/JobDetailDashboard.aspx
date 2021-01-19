<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_DashboardMaster.Master" AutoEventWireup="true" CodeBehind="JobDetailDashboard.aspx.cs" Inherits="PGI_JobPortal.Views.JobDetailDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div align="center">
        <h3>
            <asp:Label ID="lblJobName" runat="server"></asp:Label></h3>
    </div>
    <section class="job-detail section">
        <div class="container">
            <div class="row justify-content-between">

                <div class="col-lg-8 col-md-12 col-xs-12">
                    <div class="content-area">

                        <h5>Job Description</h5>
                        <p>
                            <asp:Label ID="lblJobDescription" runat="server"></asp:Label>
                        </p>
                        <h5>Responsibilities</h5>
                        <p>
                            <asp:Label ID="lblResponsibilities" runat="server"></asp:Label>
                        </p>
                        <h5>Educational Requirments</h5>
                        <p>
                            <asp:Label ID="lblEducationalReq" runat="server"></asp:Label>
                        </p>
                        <h5>Experience Requirements</h5>
                        <p>
                            <asp:Label ID="lblExperienceReq" runat="server"></asp:Label>
                        </p>
                        <h5>Additional Requirements</h5>
                        <p>
                            <asp:Label ID="lblAdditionalReq" runat="server"></asp:Label>
                        </p>
                        <h5>Benifits</h5>
                        <p>
                            <asp:Label ID="lblBenifits" runat="server"></asp:Label>
                        </p>




                        <%--<h5>How To Apply</h5>
                        <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>--%>
                    </div>
                </div>

                <div class="col-lg-4 col-md-12 col-xs-12">
                    <div class="sideber">
                        <div class="widghet">
                            <h3>Job Summary</h3>


                            <span><i class="lni-map-marker"></i>
                                <asp:Label ID="lblLocation" runat="server"></asp:Label></span><br />
                            <br />
                            <p>
                                Vacancy:
                                <asp:Label ID="lblVacancy" runat="server"></asp:Label>
                            </p>
                            <p>
                                Catagory:
                                <asp:Label ID="lblCatagory" runat="server"></asp:Label>
                            </p>
                            <p>
                                Status:
                                <asp:Label ID="lblEmpStatus" runat="server"></asp:Label>
                            </p>
                            <p>
                                Work Place:
                                <asp:Label ID="lblWorkPlace" runat="server"></asp:Label>
                            </p>
                            <p>
                                Experience:
                                <asp:Label ID="lblExperiencePeriod" runat="server"></asp:Label>
                                Years
                            </p>
                            <p>
                                Gender Preference:
                                <asp:Label ID="lblGender" runat="server"></asp:Label>
                            </p>
                            <p style="color: navy">
                                Salary:
                                <asp:Label ID="lblSalary" runat="server"></asp:Label>
                            </p>
                            <br />
                            <span><i class="lni-calendar"></i>Posted
                                <asp:Label ID="lblPostDate" runat="server"></asp:Label>
                            </span>
                            <br />

                            <span><i class="lni-calendar"></i>Last Date
                                <asp:Label ID="lblDeadLine" runat="server"></asp:Label>
                            </span>

                        </div>
                        <div class="widget">

                            <%--<h3>Share This Job</h3>
                            <div class="share-job">

                                <ul class="mt-4 footer-social">
                                    <li><a class="facebook" href="#"><i class="lni-facebook-filled"></i></a></li>
                                    <li><a class="twitter" href="#"><i class="lni-twitter-filled"></i></a></li>
                                    <li><a class="linkedin" href="#"><i class="lni-linkedin-fill"></i></a></li>
                                    <li><a class="google-plus" href="#"><i class="lni-google-plus"></i></a></li>
                                </ul>
                                
                            </div>--%>

                            <br />
                            <br />
                            <a id="btnDelete" runat="server" href="#" class="btn btn-danger" onserverclick="btnDelete_ServerClick" visible="false">Delete Post</a>
                            <a id="btnApply" runat="server" href="#" class="btn btn-common" onserverclick="btnApply_ServerClick">Apply job</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

</asp:Content>
