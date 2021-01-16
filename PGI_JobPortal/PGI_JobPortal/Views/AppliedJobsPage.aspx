<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_DashboardMaster.Master" AutoEventWireup="true" CodeBehind="AppliedJobsPage.aspx.cs" Inherits="PGI_JobPortal.Views.AppliedJobsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center"><h3>Applied Jobs</h3></div>
    <div class="about section">
        <div class="container">

            <div class="row">
                <div class="col-lg-12 col-md-12 col-xs-12">
                    <a class="job-listings-featured" href="#">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-xs-12">

                                <div class="job-company-logo">                                   
                                        <h3>1 </h3>     
                                </div>

                                <div class="job-details">
                                    <h3>Software Engineer</h3>
                                    <span class="company-neme">MizTech</span>
                                    <%--<div class="tags">
                                        <span><i class="lni-map-marker"></i>New York</span>
                                        <span><i class="lni-user"></i>John Smith</span>
                                    </div>--%>
                                </div>

                            </div>

                            <div class="col-lg-6 col-md-6 col-xs-12 text-right">

                                <div class="tag-type">                                   
                                    <span class="full-time">Full Time</span>
                                    <%--<span class="part-time">Part Time</span>--%>
                                </div>

                            </div>
                        </div>
                    </a>
                </div>
                
            </div>

            <div class="row">
                <div class="col-lg-12 col-md-12 col-xs-12">
                    <a class="job-listings-featured" href="#">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-xs-12">

                                <div class="job-company-logo">                                   
                                        <h3> 2 </h3>     
                                </div>

                                <div class="job-details">
                                    <h3>Software Engineer</h3>
                                    <span class="company-neme">MizTech</span>
                                    <%--<div class="tags">
                                        <span><i class="lni-map-marker"></i>New York</span>
                                        <span><i class="lni-user"></i>John Smith</span>
                                    </div>--%>
                                </div>

                            </div>

                            <div class="col-lg-6 col-md-6 col-xs-12 text-right">

                                <div class="tag-type">                                   
                                    <span class="full-time">Full Time</span>
                                    <%--<span class="part-time">Part Time</span>--%>
                                </div>

                            </div>
                        </div>
                    </a>
                </div>
                
            </div>

        </div>
    </div>



</asp:Content>
