<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_DashboardMaster.Master" AutoEventWireup="true" CodeBehind="JobPostingPage.aspx.cs" Inherits="PGI_JobPortal.Views.JobPostingPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        p {
            color: black;
        }

        h2 {
            font-size: 23px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:HiddenField ID="SKprefixHF" runat="server" />
    <asp:HiddenField ID="SKcurNoHF" runat="server" />
    <asp:Label ID="lblJobCode" runat="server" Visible="false"></asp:Label>


    <div class="container">
        <div class="row justify-content-between">
            <div class="col-lg-12 col-md-12 col-xs-12">
                <div class="content-area">

                    <p>
                        select Job Catagory * :
                            <asp:DropDownList ID="dropdownJobCatagory" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="dropdownJobCatagory_SelectedIndexChanged" required></asp:DropDownList>
                        or
                            <asp:TextBox ID="txtNwCatagory" Width="40%" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <a id="btnNwCat" runat="server" class="btn btn-dark" onserverclick="btnNewCatagory_Click">Add New Catagory</a>
                        <%--<asp:Button ID="btnNewCatagory" runat="server" Text="Add New Catagory" CssClass="btn btn-dark" OnClick="btnNewCatagory_Click" />--%>
                    </p>

                </div>
            </div>
        </div>
    </div>



    <div class="container">
        <div class="row justify-content-between">

            <div class="col-lg-12 col-md-12 col-xs-12">
                <div class="content-area">


                    <br />
                    <h2>Job Name</h2>
                    <asp:TextBox ID="txtJobName" runat="server" CssClass="form-control" required></asp:TextBox>
                    <h2>Job Description</h2>
                    <p>
                        <asp:TextBox ID="txtJobDescription" runat="server" CssClass="form-control" TextMode="MultiLine" required></asp:TextBox>
                    </p>
                    <h2>Responsibilities</h2>
                    <asp:TextBox ID="txtResponsibilities" runat="server" CssClass="form-control" TextMode="MultiLine" required></asp:TextBox>
                    <h2>Educational Requirments</h2>
                    <asp:TextBox ID="txtEducationReq" runat="server" CssClass="form-control" TextMode="MultiLine" required></asp:TextBox>
                    <h2>Experience Requirements(specify fields of experience)</h2>
                    <asp:TextBox ID="txtExpRequirements" runat="server" CssClass="form-control" TextMode="MultiLine" required></asp:TextBox>
                    <h2>Additional Requirements</h2>
                    <asp:TextBox ID="txtAdditionalReq" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    <h2>Benifits</h2>
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
                        <div class="form-group" style="display: flex; flex-direction: row; align-items: center">
                            <p>
                                location:
                                <asp:TextBox ID="txtJobLocation" Width="60%" runat="server" CssClass="form-control" required></asp:TextBox>
                            </p>
                            &nbsp
                            <p>
                                Workplace:
                                <asp:TextBox ID="txtWorkPlace" Width="60%" runat="server" CssClass="form-control" required></asp:TextBox>
                            </p>
                        </div>
                        <div class="form-group" style="display: flex; flex-direction: row; align-items: center">
                            <p>
                                Vacancy:
                                    <asp:TextBox ID="txtVacancy" TextMode="Number" runat="server" CssClass="form-control"></asp:TextBox>
                            </p>
                            &nbsp
                                <p>
                                    Experience:
                                    <asp:TextBox ID="txtExperienceYrs" runat="server" TextMode="Number" CssClass="form-control" placeholder="Years"></asp:TextBox>
                                </p>
                        </div>


                        <p>
                            Employment Status:
                                <asp:TextBox ID="txtEmpStatus" Width="40%" runat="server" CssClass="form-control" required></asp:TextBox>
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
                        <p style="color: navy">
                            Deadline:
                                <asp:TextBox ID="txtDeadline" TextMode="Date" Width="40%" runat="server" CssClass="form-control"></asp:TextBox>
                        </p>
                        <br />


                    </div>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-common" Text="SUBMIT" OnClick="btnSubmit_Click" />

                </div>
            </div>

        </div>
    </div>


</asp:Content>
