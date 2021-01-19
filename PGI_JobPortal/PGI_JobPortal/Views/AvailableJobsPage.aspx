<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_DashboardMaster.Master" AutoEventWireup="true" CodeBehind="AvailableJobsPage.aspx.cs" Inherits="PGI_JobPortal.Views.AvailableJobsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="latest-jobs">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Latest Jobs</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit ellentesque dignissim quam et
                    <br>
                    metus effici turac fringilla lorem facilisis.
                </p>
            </div>

            <div class="row">

                <asp:Repeater ID="RptrJobList" runat="server">
                    <ItemTemplate>
                        <%--JOBCARD START--%>


                        <%--class="job-listings-featured"--%>

                        <div class="col-lg-6 col-md-12 col-xs-12">
                            <a href="JobDetailDashboard.aspx?JobCode=<%# Eval("JobCode") %>">
                                <div class="jobs-latest">
                                    <%--<div class="img-thumb">
                                        <asp:Label ID="lblJobStatus" runat="server" Visible="false" Text="<%# Eval("JobStatus")%>"></asp:Label>
                                    </div>--%>
                                    <div class="content">
                                        <h3><%# Eval("JobName")%></h3>
                                        <p class="brand"><%# Eval("Catagory")%></p>
                                        <div class="tags">
                                            <span><i class="lni-map-marker"></i><%# Eval("Location")%></span>
                                            <span><%# Eval("Salary")%></span>
                                        </div>

                                        <span class="full-time"><%# Eval("EmploymentStatus")%></span>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <%--JOBCARD END--%>
                    </ItemTemplate>
                </asp:Repeater>

            </div>

        </div>

    </section>

</asp:Content>
