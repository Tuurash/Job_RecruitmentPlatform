<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_DashboardMaster.Master" AutoEventWireup="true" CodeBehind="ApplicationListPage.aspx.cs" Inherits="PGI_JobPortal.Views.ApplicationListPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        function ShowCoverLetterPopup(coverLetter) {

            var letter = coverLetter;

            iziToast.success({
                title: 'Cover Letter',
                message: letter,
                timeout: false,
            });
        }
    </script>



</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div align="center">
        <h2>Application List</h2>
    </div>
    <br />

    <div class="form-group" style="display: flex; flex-direction: row; align-items: center">
        <p>
            Filter By Department :  
            <asp:DropDownList ID="DeptDorpDown" runat="server" CssClass="dropdown dropdown-toggle" AutoPostBack="true" OnSelectedIndexChanged="DeptDorpDown_SelectedIndexChanged"></asp:DropDownList>
        </p>
        &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <p>
            Date :
            <asp:DropDownList ID="DropDownDate" runat="server" CssClass="dropdown dropdown-toggle" AutoPostBack="true" OnSelectedIndexChanged="DropDownDate_SelectedIndexChanged">
                <asp:ListItem Text="Ascending" Value="asc" />
                <asp:ListItem Text="Descending" Value="desc" Selected />
            </asp:DropDownList>
        </p>
    </div>

    <asp:GridView runat="server" AutoGenerateColumns="false" ID="gridApplicationList" CssClass="table table-hover table-responsive" Font-Size="Small">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="selectChkBox" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="ID" Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lblID" runat="server" Text='<%# Bind("ID")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Designation" Visible="true">
                <ItemTemplate>
                    <asp:Label ID="lblCatagory" Font-Size="11px" runat="server" Text='<%# Bind("Catagory")%>'></asp:Label>
                    <br />
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
                    <asp:Button ID="btnShowCoverLetter" ToolTip='<%# Bind("CoverLetter")%>' runat="server" CommandArgument='<%# Bind("CoverLetter")%>' CssClass="link" ForeColor="BlueViolet" Text="View" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="ApplyDate">
                <ItemTemplate>
                    <asp:Label ID="lblApplyDate" runat="server" Text='<%# Eval("ApplyDate","{0:MMM d, yy}")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:Button ID="btnShortList" runat="server" CssClass="btn btn-success" Text="Short List" OnClick="btnShortList_Click" />

    <br />

    <div id="divShortlist" runat="server">

        <div align="center">
            <h2>Short-listed Application List</h2>
        </div>
        <br />

        <asp:GridView runat="server" AutoGenerateColumns="false" ID="ShortlistGrid" CssClass="table table-hover table-responsive" Font-Size="Small">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="selectChkBox" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="ID" Visible="false">
                    <ItemTemplate>
                        <asp:Label ID="lblID" runat="server" Text='<%# Bind("ID")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Designation" Visible="true">
                    <ItemTemplate>
                        <asp:Label ID="lblCatagory" Font-Size="11px" runat="server" Text='<%# Bind("Catagory")%>'></asp:Label>
                        <br />
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

                <asp:TemplateField HeaderText="CLetter" Visible="false">
                    <ItemTemplate>
                        <asp:Button ID="btnShowCoverLetter" ToolTip='<%# Bind("CoverLetter")%>' runat="server" CommandArgument='<%# Bind("CoverLetter")%>' CssClass="link" ForeColor="BlueViolet" Text="View" />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="ApplyDate" Visible="true">
                    <ItemTemplate>
                        <asp:Label ID="lblApplyDate" runat="server" Text='<%# Eval("ApplyDate","{0:MMM d, yy}")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="MailSent">
                    <ItemTemplate>
                        <asp:Label ID="lblMailSent" runat="server" Text='<%# Eval("SentMail")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Text Sent">
                    <ItemTemplate>
                        <asp:Label ID="lblTextSent" runat="server" Text='<%# Eval("SentMessage")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <br />
        <asp:Button ID="btnSendMail" runat="server" CssClass="btn btn-success" Text="Send mail" OnClick="btnSendMail_Click" />
        <asp:Button ID="btnSendMessage" runat="server" CssClass="btn btn-success" Text="Send Text Message" OnClick="btnSendMessage_Click" />


        <asp:Button ID="btnRmv" runat="server" CssClass="btn btn-danger" Text="Remove" ToolTip="Remove From Shortlist" OnClick="btnRmv_Click" />


        <div id="divMailBody" runat="server" visible="false" class="col-md-12 col-lg-8 col-sm-12">
            <section id="contact" class="section">
                <p>Subject:</p>
                <asp:TextBox ID="txtMailSubject" runat="server" CssClass="form-control" required></asp:TextBox>
                <p>Body:</p>
                <asp:TextBox ID="txtMailBody" runat="server" CssClass="form-control" TextMode="MultiLine" required></asp:TextBox>
            </section>
            <asp:Button ID="btnSend" runat="server" CssClass="btn btn-success" Text="Send" Width="200px" OnClick="btnSend_Click" />
            <a runat="server" id="cancel" class="btn btn-danger" onserverclick="cancel_ServerClick">cancel</a>
        </div>

        <div id="divTextBody" runat="server" visible="false" class="col-md-12 col-lg-8 col-sm-12">
            <section id="contact" class="section">
                <p>Body:</p>
                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" required></asp:TextBox>
            </section>
            <asp:Button ID="btnSendTxt" runat="server" CssClass="btn btn-success" Text="Send" Width="200px" OnClick="btnSendTxt_Click" />
            <a runat="server" id="cancel2" class="btn btn-danger" onserverclick="cancel_ServerClick">cancel</a>
        </div>

    </div>

</asp:Content>
