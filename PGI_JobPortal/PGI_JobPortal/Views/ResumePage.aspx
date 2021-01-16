<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_DashboardMaster.Master" AutoEventWireup="true" CodeBehind="ResumePage.aspx.cs" Inherits="PGI_JobPortal.Views.ResumePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div align="center">
        <h3>Resume</h3>
    </div>

    <div class="about section">
        <div class="container">

            <div class="row">
                <div class="col-lg-12 col-md-12 col-xs-12">
                    <div class="col-12 text-center mt-4">
                        <asp:FileUpload ID="fileResume" runat="server" CssClass="form-control" />
                    </div>



                </div>

                <div class="col-lg-12 col-md-12 col-xs-12">

                    <%--<iframe src="https://docs.google.com/viewer?url=D:\BuyerProfile.pdf&embedded=true" height="200" width="300"></iframe>--%>

                    <br />
                    <div align="center">
                        <h2>Your Resume</h2>
                    </div>
                    <embed src="../BuyerProfile.pdf" class="col-lg-12 col-md-12 col-xs-12" height="800" />

                </div>
            </div>



        </div>
    </div>

</asp:Content>
