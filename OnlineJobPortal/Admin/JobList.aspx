<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="JobList.aspx.cs" Inherits="OnlineJobPortal.Admin.JobList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
        <p>
            <div style="background-image: url('../Images/bg.jpg'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover;">
                <div class="container-fluid pt-4 pb-4">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>

                    <h3 class="text-center">Job List/Details</h3>


                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" Height="108px" Width="1068px">

                        <Columns>
                            <asp:TemplateField HeaderText="JobId">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval(" JobId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Job Title">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval(" Title ") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Qualification">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval(" Qualification ") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Experience">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval(" Experience ") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CompanyName">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval(" CompanyName ") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Country">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval(" Country ") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="State">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval(" State ") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CreatedDate">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval(" CreatedDate ") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval(" JobId ") %>' CommandName="cmd_edt">✏️</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("JobId") %>' CommandName="cmd_dlt">❌</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle BackColor="#7200cf" ForeColor="White" />

                    </asp:GridView>





                    <div class="row mb-3 pt-sm-3">
                        <div class="col-md-12">
                        </div>
                    </div>
                </div>
            </div>


</asp:Content>
