﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_Master.Master" AutoEventWireup="true" CodeBehind="JobDetailPage.aspx.cs" Inherits="PGI_JobPortal.Views.JobDetailPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <br />
    <br />
    <section class="job-detail section">
        <div class="container">
            <div class="row justify-content-between">

                <div class="col-lg-8 col-md-12 col-xs-12">
                    <div class="content-area">
                        <h4>
                            <asp:Label ID="lblJobName" runat="server"></asp:Label>
                        </h4>
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




                        <h5>How To Apply</h5>
                        <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>

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
                                Employment Status:
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

                            <br />
                            <br />

                            <a id="btnDelete" runat="server" href="#" class="btn btn-danger" onserverclick="btnDelete_ServerClick" visible="false">Delete Post</a>
                            <a id="btnApply" runat="server" href="#" class="btn btn-success" onserverclick="btnApply_ServerClick">Apply job</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

</asp:Content>
