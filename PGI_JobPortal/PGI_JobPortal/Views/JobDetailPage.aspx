<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PGI_Master.Master" AutoEventWireup="true" CodeBehind="JobDetailPage.aspx.cs" Inherits="PGI_JobPortal.Views.JobDetailPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        p{color:black;}
    </style>
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
                        <h4>Job Name</h4>
                        <h5>Job Description</h5>
                        <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi umsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit</p>
                        <h5>Responsibilities</h5>
                        <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi umsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit</p>
                        <h5>Educational Requirments</h5>
                        <p>Proin gravida nibh vel</p>
                        <h5>Experience Requirements</h5>
                        <p>Proin gravida nibh vel  </p>
                        <h5>Additional Requirements</h5>
                        <p>Proin gravida nibh vel  </p>
                        <h5>Benifits</h5>
                        <p>Proin gravida nibh vel  </p>
                        
                        
                        
                        
                        <h5>How To Apply</h5>
                        <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>

                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-xs-12">
                    <div class="sideber">
                        <div class="widghet">
                            <h3>Job Summary</h3>


                            <span><i class="lni-map-marker"></i> Motijheel, Dhaka</span><br />
                            <br />
                            <p>Vacancy: 3</p>
                            <p>Catagory: IT/Networking</p>
                            <p>Employment Status: Fulltime</p>
                            <p>Experience: 2 Years</p>
                            <p>Gender Preference: Male</p>
                            <p style="color:navy">Salary: 15000</p><br />
                            <span><i class="lni-calendar"></i>Posted 26 June, 2020</span><br />

                            <span><i class="lni-calendar"></i>Last Date 29 June, 2020</span>

                        </div>
                        <div class="widget">

                            <%--<h3>Share This Job</h3>
                            <div class="share-job">

                                <ul class="mt-4 footer-social">
                                    <li><a class="facebook" href="#"><i class="lni-facebook-filled"></i></a></li>
                                    <li><a class="twitter" href="#"><i class="lni-twitter-filled"></i></a></li>
                                    <li><a class="linkedin" href="#"><i class="lni-linkedin-fill"></i></a></li>
                                    <li><a class="google-plus" href="#"><i class="lni-google-plus"></i></a></li>
                                </ul>
                                
                            </div>--%>

                            <br />
                            <br />

                            <a href="#" class="btn btn-common">Apply job</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
