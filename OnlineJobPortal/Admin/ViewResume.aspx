<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewResume.aspx.cs" Inherits="OnlineJobPortal.Admin.ViewResume" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
        <div style="background-image: url('../Images/bg.jpg'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover;">
            <div class="container-fluid pt-4 pb-4">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>

                <h3 class="text-center">Resume List/Details</h3>

                <div class="row mb-3 pt-sm-3">
                    <div class="col-md-12">



                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" Width="862px">


                            <Columns>
                                <asp:TemplateField HeaderText="RegisterId">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("RegisterId") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="FullName">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("FullName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Resume">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="lnkDownload" runat="server"
                                            NavigateUrl='<%# Eval("Resume", "~/Resumes/{0}") %>'
                                            Text="⬇"
                                            Target="_blank"
                                            Visible='<%# !string.IsNullOrEmpty(Eval("Resume") as string) %>'>
                                        </asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("RegisterId") %>' CommandName="cmd__dlt">❌</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle BackColor="#7200cf" ForeColor="White" />

                        </asp:GridView>
                        &nbsp;
                    </div>
                </div>
            </div>
        </div>
    </center>



</asp:Content>
