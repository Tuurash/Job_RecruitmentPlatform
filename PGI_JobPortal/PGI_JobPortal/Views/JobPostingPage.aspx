<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_AdminDashboardMaster.Master" AutoEventWireup="true" CodeBehind="JobPostingPage.aspx.cs" Inherits="PGI_JobPortal.Views.JobPostingPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        p {
            color: black;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:HiddenField ID="SKprefixHF" runat="server" />
    <asp:HiddenField ID="SKcurNoHF" runat="server" />

    <section class="job-detail section">
        <div class="container">
            <div class="row justify-content-between">

                <div class="col-lg-12 col-md-12 col-xs-12">
                    <div class="content-area">

                        <p>
                            select Job Catagory * :
                            <asp:DropDownList ID="dropdownJobCatagory" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="dropdownJobCatagory_SelectedIndexChanged"></asp:DropDownList>
                            or
                            <asp:TextBox ID="TextBox2" Width="40%" runat="server" CssClass="form-control"></asp:TextBox>
                            <br />
                            <asp:Button ID="btnNewCatagory" runat="server" Text="Add New Catagory" CssClass="btn btn-dark" OnClick="btnNewCatagory_Click" />
                        </p>

                        <h5>Job Name</h5>
                        <asp:TextBox ID="txtJobName" runat="server" CssClass="form-control" required></asp:TextBox>
                        <h5>Job Description</h5>
                        <p>
                            <asp:TextBox ID="txtJobDescription" runat="server" CssClass="form-control" TextMode="MultiLine" required></asp:TextBox>
                        </p>
                        <h5>Responsibilities</h5>
                        <asp:TextBox ID="txtResponsibilities" runat="server" CssClass="form-control" TextMode="MultiLine" required></asp:TextBox>
                        <h5>Educational Requirments</h5>
                        <asp:TextBox ID="txtEducationReq" runat="server" CssClass="form-control" TextMode="MultiLine" required></asp:TextBox>
                        <h5>Experience Requirements(specify fields of experience)</h5>
                        <asp:TextBox ID="txtExpRequirements" runat="server" CssClass="form-control" TextMode="MultiLine" required></asp:TextBox>
                        <h5>Additional Requirements</h5>
                        <asp:TextBox ID="txtAdditionalReq" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                        <h5>Benifits</h5>
                        <asp:TextBox ID="txtBenifits" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>

                    </div>


                </div>

                <div align="center">
                    <p></p>
                </div>


                <div class="col-lg-12 col-md-12 col-xs-12">
                    <div class="sideber">
                        <div class="widghet">
                            <h3>Job Summary Section</h3>
                            <p>
                                location:
                                <asp:TextBox ID="txtJobLocation" Width="40%" runat="server" CssClass="form-control" required></asp:TextBox>
                            </p>

                            <div class="form-group" style="display: flex; flex-direction: row; align-items: center">
                                <p>
                                    Vacancy:
                                    <asp:TextBox ID="TextBox1" TextMode="Number" runat="server" CssClass="form-control"></asp:TextBox>
                                </p>
                                &nbsp
                                <p>
                                    Experience:
                                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" CssClass="form-control" placeholder="Years"></asp:TextBox>
                                </p>
                            </div>


                            <p>
                                Employment Status:
                                <asp:TextBox ID="TextBox3" Width="40%" runat="server" CssClass="form-control" required></asp:TextBox>
                            </p>

                            <p>
                                Gender Preference: 
                                <asp:DropDownList ID="dropdownGnderPref" runat="server" CssClass="form-control" Width="40%">
                                    <asp:ListItem Value="Male" Text="Male" />
                                    <asp:ListItem Value="Female" Text="Female" />
                                    <asp:ListItem Value="other" Text="other" />
                                </asp:DropDownList>
                            </p>
                            <p style="color: navy">
                                Salary:
                                <asp:TextBox ID="txtSalary" Width="40%" runat="server" CssClass="form-control"></asp:TextBox>
                            </p>
                            <br />


                        </div>

                        <a href="#" class="btn btn-common">Submit</a>
                    </div>
                </div>

            </div>
        </div>
    </section>

</asp:Content>
