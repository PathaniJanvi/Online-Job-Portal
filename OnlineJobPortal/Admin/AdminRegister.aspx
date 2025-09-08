<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="OnlineJobPortal.Admin.AdminRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #333;
        }

        form {
            margin-top: 50px;
        }

        table {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        td {
            padding: 10px 0;
        }

        .form-control {
            width: 300px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        #btnRegister {
            margin-top: 20px;
            padding: 10px 30px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

            #btnRegister:hover {
                background-color: #0056b3;
            }

        center {
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Admin Register</h1>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label><br />
                            <asp:TextBox ID="txtunm" runat="server" CssClass="form-control" placeholder="Enter Unique UserName"></asp:TextBox><br />
                            <%--                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ErrorMessage="Plase Enter Your Unique Name" ControlToValidate="txtunm" ForeColor="Red" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Plase Enter Your Name" ControlToValidate="txtunm" ForeColor="Red" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
                            <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your Password"></asp:TextBox><br />
                            <%--                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ErrorMessage="Plase Enter Password" ControlToValidate="txtpass" ForeColor="Red" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Plase Enter Your Password" ControlToValidate="txtpass" ForeColor="Red" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label><br />
                            <asp:TextBox ID="txtcpss" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm your Password"></asp:TextBox><br />
                            <%--                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"  ControlToCompare="txtpss" ControlToValidate="txtcpass" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:CompareValidator>--%>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password & Confirm Password shoud be same..." ControlToCompare="txtpass" ControlToValidate="txtcpss" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:CompareValidator>

                        </td>
                    </tr>
                </table>
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            </center>
        </div>
    </form>
</body>
</html>
