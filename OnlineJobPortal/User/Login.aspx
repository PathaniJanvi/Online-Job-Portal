<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineJobPortal.User.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>

        <div class="container pt-50 pb-40">

            <div class="row">
                <div class="col-12">
                    <h2 class="contact-title text-xl-center">Login</h2>
                </div>
                <div class="col-lg-6 mx-auto">
                    <div class="form-contact contact_form">
                        <div class="row">

                            <div class="col-12">
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                                    <%-- <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder=" Enter Message"></textarea>--%>
                                    <asp:TextBox ID="txtUserName" CssClass="form-control" placeholder=" Enter Unique UserName" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="PassWord"></asp:Label>
                                    <%--<input class="form-control valid" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder="Enter your name">--%>
                                    <asp:TextBox ID="txtPassword" class="form-control w-100" placeholder="Enter Password" runat="server"></asp:TextBox>
                                </div>
                            </div>


                        </div>

                    </div>
                    <div class="form-group mt-3 text-xl-center">
                        <%-- <button type="submit" class="button button-contactForm boxed-btn">Send</button> --%>
                        <asp:Button ID="btnLogin" class="button button-contactForm boxed-btn" runat="server" Text="Login" />
                        <span class="clickLink" style="color: red;">
                            <a href="../User/Register.aspx">New User? Click Here...</a>
                        </span>
                    </div>

                </div>
            </div>
        </div>

    </section>


</asp:Content>
