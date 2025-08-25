<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OnlineJobPortal.User.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>

        <div class="container pt-50 pb-40">

            <div class="row">
                <div class="col-12">
                    <h2 class="contact-title text-xl-center">Sign Up</h2>
                </div>
                <div class="col-lg-6 mx-auto">
                    <div class="form-contact contact_form">
                        <div class="row">
                            <div class="col-12">
                                <h6>Login information</h6>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                                    <%-- <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder=" Enter Message"></textarea>--%>
                                    <asp:TextBox ID="txtUserName" CssClass="form-control" placeholder=" Enter Unique UserName" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="PassWord"></asp:Label>
                                    <%--<input class="form-control valid" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder="Enter your name">--%>
                                    <asp:TextBox ID="txtPassword" class="form-control w-100" placeholder="Enter Password" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                                    <%--<input class="form-control valid" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" placeholder="Email">--%>
                                    <asp:TextBox ID="txtConfirmPassword" class="form-control w-100" placeholder="Enter Confirm Password" runat="server"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password & Confirm Password shoud be same..." ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:CompareValidator>

                                </div>
                            </div>
                            <div class="col-12">
                                <h6>Personal information</h6>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <asp:Label ID="Label4" runat="server" Text="Full Name"></asp:Label>
                                    <%--<input class="form-control" name="subject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter Subject">--%>
                                    <asp:TextBox ID="txtFullName" class="form-control w-100" placeholder="Enter Full Name" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Name Must be in cherectres" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[a-zA-Z\s]+$" ControlToValidate="txtFullName"></asp:RegularExpressionValidator>


                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                                    <%--<input class="form-control" name="subject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter Subject">--%>
                                    <asp:TextBox ID="txtAddress" class="form-control w-100" placeholder="Enter Address" TextMode="MultiLine" runat="server"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <asp:Label ID="Label6" runat="server" Text="Mobile Number"></asp:Label>
                                    <%--<input class="form-control" name="subject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter Subject">--%>
                                    <asp:TextBox ID="txtMobile" class="form-control w-100" placeholder="Enter Mobile Number" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Mobile No. Must Have 10 digits" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[0-9]{10}$" ControlToValidate="txtMobile"></asp:RegularExpressionValidator>


                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
                                    <%--<input class="form-control" name="subject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter Subject">--%>
                                    <asp:TextBox ID="txtEmail" class="form-control w-100" placeholder="Enter Email" TextMode="Email" runat="server"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="form-group mt-3 text-xl-center">
                        <%--<button type="submit" class="button button-contactForm boxed-btn">Send</button>--%>
                        <asp:Button ID="btnRegister" class="button button-contactForm boxed-btn" runat="server" Text="Register" OnClick="btnRegister_Click" />
                        <span class="clickLink" forcolor="read"><a href="../User/Login.aspx">Already Ragister? Click Here...</a></span>
                        
                    </div>

                </div>
            </div>
        </div>

    </section>

</asp:Content>
