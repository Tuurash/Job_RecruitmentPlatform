<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_DashboardMaster.Master" AutoEventWireup="true" CodeBehind="ApplicationListPage.aspx.cs" Inherits="PGI_JobPortal.Views.ApplicationListPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:GridView runat="server" AutoGenerateColumns="false" ID="gridApplicationList" CssClass="table table-responsive-sm">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="selectChkBox" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Catagory" Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lblCatagory" runat="server" Text='<%# Bind("Catagory")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Designation" Visible="true">
                <ItemTemplate>
                    <asp:Label ID="lblJobName" runat="server" Text='<%# Bind("JobName")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="JobCode" Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lblJobCode" runat="server" Text='<%# Bind("JobCode")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ApplicantCode" Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lblApplicantCode" runat="server" Text='<%# Bind("ApplicantCode")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="lblFullName" runat="server" Text='<%# Bind("FullName")%>'></asp:Label>
                    <br />
                    <br />
                    Email: 
                    <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email")%>'></asp:Label>

                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Contact" Visible="true">
                <ItemTemplate>
                    <asp:Label ID="lblPhoneNumber" runat="server" Text='<%# Bind("PhoneNumber")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Resume">
                <ItemTemplate>
                    <%--<asp:Label ID="FileResume" runat="server" Text='<%# Bind("Resume")%>'></asp:Label>--%>
                    <asp:Button ID="btnShowResume" CommandArgument='<%# Bind("Resume")%>' runat="server" CssClass="link" ForeColor="BlueViolet" OnClick="btnShowResume_Click" Text="show" />

                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="CLetter">
                <ItemTemplate>
                    <asp:Button ID="btnShowCoverLetter" runat="server" CssClass="link" ForeColor="BlueViolet" Text="View" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="ApplyDate">
                <ItemTemplate>
                    <asp:Label ID="lblApplyDate" runat="server" Text='<%# Eval("ApplyDate","{0:yyyy/MM/dd}")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>
