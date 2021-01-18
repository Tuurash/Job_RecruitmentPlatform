<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_AdminDashboardMaster.Master" AutoEventWireup="true" CodeBehind="PGI_AdminJobList.aspx.cs" Inherits="PGI_JobPortal.Views.PGI_AdminJobList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div align="center">
        <h3>Applied Jobs</h3>
    </div>
    <div class="about section">
        <div class="container">

            <asp:Repeater ID="RptrJobList" runat="server">
                <ItemTemplate>

                    <%--Job Card--%>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-xs-12">
                            <a class="job-listings-featured" href="JobDetailPage.aspx?JobCode=<%# Eval("JobCode") %>">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-xs-12">

                                        <div class="job-company-logo">
                                            <h3></h3>
                                        </div>

                                        <div class="job-details">
                                            <h3>
                                                <%# Eval("JobName")%></asp:Label></h3>
                                            <span class="company-neme">
                                                <%# Eval("Catagory")%></span>

                                            <div class="tags">
                                                <span><i class="lni-map-marker"></i>
                                                    <%# Eval("Location")%></span>
                                                <span>
                                                    <%# Eval("Salary")%></span>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-lg-6 col-md-6 col-xs-12 text-right">

                                        <div class="tag-type">
                                            <span class="full-time">
                                                <%# Eval("EmploymentStatus")%></span>
                                            <%--<span class="part-time">Part Time</span>--%>
                                        </div>

                                    </div>
                                </div>
                            </a>
                        </div>

                    </div>
                    <%--End Job Card--%>
                </ItemTemplate>
            </asp:Repeater>



        </div>
    </div>

</asp:Content>
