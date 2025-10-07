<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="JobDetails.aspx.cs" Inherits="OnlineJobPortal.User.JobDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>

        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="../assets/img/hero/about.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>UI/UX Designer</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End -->
        <!-- job post company Start -->
        <div class="job-post-company pt-120 pb-120">
            <div class="container">
                <div class="row justify-content-between">
                    <!-- Left Content -->
                    <div class="col-xl-7 col-lg-8">
                        <!-- job single -->
                        <%-- <div class="single-job-items mb-50">
                            <div class="job-items">
                                <div class="company-img company-img-details">
                                    <a href="#"><img src="../assets/img/icon/job-list1.png" alt=""></a>
                                </div>
                                <div class="job-tittle">
                                    <a href="#">
                                        <h4>Digital Marketer</h4>
                                    </a>
                                    <ul>
                                        <li>Creative Agency</li>
                                        <li><i class="fas fa-map-marker-alt"></i>Athens, Greece</li>
                                        <li>$3500 - $4000</li>
                                    </ul>
                                </div>
                            </div>
                        </div>--%>
                        <!-- job single End -->

                        <asp:DataList ID="DataList2" runat="server">
                            <ItemTemplate>

                                <div style="width: 100%;">
                                    <div class="single-job-items mb-30">
                                        <div class="job-items">
                                            <div class="company-img">
                                                <a <%# Eval("JobId") %>">

                                                    <asp:Image ID="Image1" runat="server" Width="80px" ImageUrl='<%# Eval("CompanyLogo") %>' />
                                                </a>
                                                &nbsp;&nbsp;&nbsp;
                                            </div>
                                            <div class="job-tittle job-tittle2">
                                                <a <%# Eval("JobId") %>">
                                                    <h5><%# Eval("Title") %></h5>
                                                </a>
                                                <ul>
                                                    <li><%# Eval("CompanyName") %></li>
                                                    <li><i class="fas fa-map-marker-alt"></i><%# Eval("State") %>, <%# Eval("Country") %></li>
                                                    <li><%# Eval("Salary") %></li>
                                                </ul>
                                            </div>
                                        </div>
                                       <%-- <div class="items-link items-link2 f-right">
                                            <a <%# Eval("JobId") %>"><%# Eval("JobType") %></a>
                                           <span class="text-secondary">
                                                <i class="fas fa-clock pr-1"></i>
                                                <%# RelativeDate(Convert.ToDateTime(Eval("CreatedDate"))) %>
                                            </span>
                                        </div>--%>
                                    </div>
                                </div>


                            </ItemTemplate>

                        </asp:DataList>


                        <div class="job-post-details">
                            <div class="post-details1 mb-50">
                                <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Job Description</h4>
                                </div>
                                <p>It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.</p>
                            </div>
                            <div class="post-details2  mb-50">
                                <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Required Knowledge, Skills, and Abilities</h4>
                                </div>
                                <ul>
                                    <li>System Software Development</li>
                                    <li>Mobile Applicationin iOS/Android/Tizen or other platform</li>
                                    <li>Research and code , libraries, APIs and frameworks</li>
                                    <li>Strong knowledge on software development life cycle</li>
                                    <li>Strong problem solving and debugging skills</li>
                                </ul>
                            </div>
                            <div class="post-details2  mb-50">
                                <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Education + Experience</h4>
                                </div>
                                <ul>
                                    <li>3 or more years of professional design experience</li>
                                    <li>Direct response email experience</li>
                                    <li>Ecommerce website design experience</li>
                                    <li>Familiarity with mobile and web apps preferred</li>
                                    <li>Experience using Invision a plus</li>
                                </ul>
                            </div>
                        </div>

                    </div>
                    <!-- Right Content -->
                    <div class="col-xl-4 col-lg-4">
                        <div class="post-details3  mb-50">
                            <!-- Small Section Tittle -->
                            <div class="small-section-tittle">
                                <h4>Job Overview</h4>
                                <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
                                    <ItemTemplate>
                                        <ul>
                                            <li>Posted date : <span><%# Eval("CreatedDate") %></span></li>
                                            <li>Location : <span><%# Eval("Country") %></span></li>
                                            <li>Compnay : <span><%# Eval("CompanyName") %></span></li>
                                            <li>Job nature : <span><%# Eval("JobType") %></span></li>
                                            <li>Salary :  <span><%# Eval("Salary") %></span></li>
                                            <li>Last date : <span><%# Eval("LastDate") %></span></li>
                                        </ul>
                                   
                            </div>

                            <div class="apply-btn2">
                                <%--<a href="#" class="btn">Apply Now</a>--%>
<%--                                <asp:Button ID="btnApply" runat="server" Text="Apply Now" class="btn" OnClick="btnApply_Click" />--%>
                                <asp:LinkButton ID="btnApply" runat="server" class="btn" CommandName="lbApplyJob">Apply Now</asp:LinkButton>
                                  </ItemTemplate>

                               </asp:DataList>
                            </div>
                               
                        </div>
                       
                        <div class="post-details4  mb-50">
                            <!-- Small Section Tittle -->
                            <div class="small-section-tittle">
                                <h4>Company Information</h4>
                            </div>
                            <span>Colorlib</span>
                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                            <ul>
                                <li>Name: <span>Colorlib </span></li>
                                <li>Web : <span>colorlib.com</span></li>
                                <li>Email: <span>carrier.colorlib@gmail.com</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- job post company End -->

    </main>

</asp:Content>
