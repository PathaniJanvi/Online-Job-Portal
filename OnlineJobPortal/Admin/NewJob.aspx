<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="NewJob.aspx.cs" Inherits="OnlineJobPortal.Admin.NewJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('./Images/bg.jpg'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;">
        <div class="container pt-4 pb-4">

            <asp:Label ID="lblMsg" runat="server"></asp:Label>

            <h3 class="text-center">Add Job</h3>

            <div class="row mr-lg-5 ml-lg-5 mb-3">


                <div class="col-md-6 pt-3">
                    <label for="txtJobTitle" style="font-weight: 600">Job Title</label>
                    <asp:TextBox ID="txtJobTitle" runat="server" CssClass="form-control" placeholder="Ex. Web Developer, App Developer"></asp:TextBox>
                </div>


                <div class="col-md-6 pt-3">
                    <label for="txtNoOfPost" style="font-weight: 600">Number of Post</label>
                    <asp:TextBox ID="txtNoOfPost" runat="server" CssClass="form-control" placeholder="Enter Number Of Position"></asp:TextBox>
                </div>

            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <!-- Job Description -->
                <div class="col-md-12 pt-3">
                    <label for="txtDescription" style="font-weight: 600">Description</label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"
                        placeholder="Enter Job Description" TextMode="MultiLine" required></asp:TextBox>
                </div>
            </div>

            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <!-- Qualification -->
                <div class="col-md-6 pt-3">
                    <label for="txtQualification" style="font-weight: 600">Qualification/Education Required</label>
                    <asp:TextBox ID="txtQualification" runat="server" CssClass="form-control"
                        placeholder="Ex. MCA, BTech, MBA" required></asp:TextBox>
                </div>

                <!-- Experience -->
                <div class="col-md-6 pt-3">
                    <label for="txtExperience" style="font-weight: 600">Experience Required</label>
                    <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control"
                        placeholder="Ex: 2 Years, 1.5 Years" required></asp:TextBox>
                </div>
            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <!-- Specialization -->
                <div class="col-md-6 pt-3">
                    <label for="txtSpecialization" style="font-weight: 600">Specialization Required</label>
                    <asp:TextBox ID="txtSpecialization" runat="server" CssClass="form-control"
                        placeholder="Enter Specialization" TextMode="MultiLine" required></asp:TextBox>
                </div>

                <!-- Last Date -->
                <div class="col-md-6 pt-3">
                    <label for="txtLastDate" style="font-weight: 600">Last Date To Apply</label>
                    <asp:TextBox ID="txtLastDate" runat="server" CssClass="form-control"
                        placeholder="Enter Last Date To Apply" TextMode="Date" required></asp:TextBox>
                </div>
            </div>

            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <!-- Salary -->
                <div class="col-md-6 pt-3">
                    <label for="txtSalary" style="font-weight: 600">Salary</label>
                    <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control" placeholder="Ex: 25000/Month, 7L/Year" required></asp:TextBox>
                </div>

                <!-- Job Type -->
                <div class="col-md-6 pt-3">
                    <label for="ddlJobType" style="font-weight: 600">Job Type</label>
                    <asp:DropDownList ID="ddlJobType" runat="server" CssClass="form-control">
                        <asp:ListItem Value="0">Select Job Type</asp:ListItem>
                        <asp:ListItem>Full Time</asp:ListItem>
                        <asp:ListItem>Part Time</asp:ListItem>
                        <asp:ListItem>Remote</asp:ListItem>
                        <asp:ListItem>Freelance</asp:ListItem>
                    </asp:DropDownList>

                    <!-- Validation -->
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="ddlJobType" InitialValue="0"
                        ErrorMessage="JobType is required" ForeColor="Red"
                        Display="Dynamic" SetFocusOnError="true">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <!-- Company/Organisation Name -->
                <div class="col-md-6 pt-3">
                    <label for="txtCompany" style="font-weight: 600">Company/Organisation Name</label>
                    <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control"
                        placeholder="Enter Company/Organisation Name" required></asp:TextBox>
                </div>

                <!-- Company/Organisation Logo -->
                <div class="col-md-6 pt-3">
                    <label for="fuCompanyLogo" style="font-weight: 600">Company/Organisation Logo</label>
                    <asp:FileUpload ID="fuCompanyLogo" runat="server" CssClass="form-control"/>
                </div>
            </div>

            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <!-- Website -->
                <div class="col-md-6 pt-3">
                    <label for="txtWebsite" style="font-weight: 600">Website</label>
                    <asp:TextBox ID="txtWebsite" runat="server" CssClass="form-control"
                        placeholder="Enter Website" TextMode="Url"></asp:TextBox>
                </div>

                <!-- Email -->
                <div class="col-md-6 pt-3">
                    <label for="txtEmail" style="font-weight: 600">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"
                        placeholder="Enter Email" TextMode="Email"></asp:TextBox>
                </div>
            </div>

            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <!-- Address -->
                <div class="col-md-12 pt-3">
                    <label for="txtAddress" style="font-weight: 600">Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"
                        placeholder="Enter Work Location" TextMode="MultiLine" required></asp:TextBox>
                </div>
            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">

                <!-- Country -->
                <div class="col-md-6 pt-3">
                    <label for="ddlCountry" style="font-weight: 600">Country</label>
                    <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control" AutoPostBack="True">
                        <asp:ListItem Value="0">-- Select Country --</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>United States</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                        <asp:ListItem>United Kingdom</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>Italy</asp:ListItem>
                        <asp:ListItem>Spain</asp:ListItem>
                        <asp:ListItem>Brazil</asp:ListItem>
                        <asp:ListItem>Russia</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                        <asp:ListItem>Japan</asp:ListItem>
                        <asp:ListItem>South Korea</asp:ListItem>
                        <asp:ListItem>South Africa</asp:ListItem>
                        <asp:ListItem>Mexico</asp:ListItem>
                    </asp:DropDownList>

                    <!-- Validation -->
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="ddlCountry" InitialValue="0"
                        ErrorMessage="Country is required" ForeColor="Red"
                        Display="Dynamic" SetFocusOnError="true">
                    </asp:RequiredFieldValidator>
                </div>

                <!-- State -->
                <div class="col-md-6 pt-3">
                    <label for="txtState" style="font-weight: 600">State</label>
                    <asp:TextBox ID="txtState" runat="server" CssClass="form-control"
                        placeholder="Enter State" required></asp:TextBox>
                </div>
            </div>

            <div class="row mr-lg-5 ml-lg-5 mb-3 pt-4">
                <div class="col-md-3 col-md-offset-2 mb-3">
                    <%--<asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block"
                        BackColor="#7200cf" Text="Add Job" />--%>
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block"
                        BackColor="#7200cf" Text="Add Job" OnClick="btnAdd_Click" />
                </div>
            </div>
        </div>
</asp:Content>
