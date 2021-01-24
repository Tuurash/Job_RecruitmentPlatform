<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_DashboardMaster.Master" AutoEventWireup="true" CodeBehind="RegisteredCandidateDashboard.aspx.cs" Inherits="PGI_JobPortal.Views.RegisteredCandidateDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="latest-jobs">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Registered Candidates</h2>
                <p>
                </p>
            </div>

            <div class="row">

                <asp:Repeater ID="RegisteredCandidateRepeater" runat="server">
                    <ItemTemplate>
                        <%--JOBCARD START--%>


                        <%--class="job-listings-featured"--%>

                        <div class="col-lg-12 col-md-12 col-xs-12">
                            <a href="#">
                                <div class="jobs-latest">

                                    <div class="img-thumb">
                                        <img src='<%# Eval("UserPhoto")%>' height="140px" width="150px" alt="">
                                    </div>

                                    <div class="content">
                                        <h3><%# Eval("FullName")%></h3>
                                        <p class="brand">Email : <a href='mailto: <%# Eval("UserEmail")%>'><%# Eval("UserEmail")%></a></p>
                                        <div class="tags">
                                            <span><i class="lni lni-linkedin"></i><a href='<%# Eval("LinkedinProfile")%>' target="_blank">Linkedin</a></span>
                                            <span><%# Eval("Gender")%></span>
                                        </div>

                                        <span class="full-time">Experience Count : <%# Eval("ExperienceCount")%></span>
                                        <span class="full-time">Experience : <%# Eval("Experience")%> Months</span>

                                        <asp:Repeater ID="RepeaterSkills" runat="server">
                                            <ItemTemplate>
                                                <span class="part-time">Experience : <%# Eval("Skill")%> Months</span>
                                            </ItemTemplate>
                                        </asp:Repeater>

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
