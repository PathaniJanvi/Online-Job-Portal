<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="OnlineJobPortal.Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <style>
       html, body {
    height: 100%;
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f8f9fa;
}

body {
    display: flex;
    justify-content: center;  /* centers horizontally */
    align-items: center;      /* centers vertically */
    height: 100vh;            /* full viewport height */
}

form {
    background: #fff;
    padding: 40px 60px;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    display: block; /* Remove inline-block from center tag */
}

h1 {
    margin-bottom: 30px;
    color: #222;
    font-weight: 700;
    text-align: center;
}

table {
    margin-bottom: 20px;
    width: 100%;
}

td {
    padding: 12px 0;
}

.form-control {
    width: 320px;
    padding: 12px 15px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 15px;
    transition: border-color 0.3s ease;
}

.form-control:focus {
    outline: none;
    border-color: #007bff;
    box-shadow: 0 0 5px rgba(0,123,255,0.5);
}

#btnLogin {
    width: 100%;
    padding: 12px;
    background-color: #007bff;
    border: none;
    border-radius: 8px;
    color: white;
    font-size: 18px;
    font-weight: 600;
    cursor: pointer;
    transition: background-color 0.3s ease;
    margin-top: 15px;
}

#btnLogin:hover {
    background-color: #0056b3;
}

    </style>
</head>

<body>
    <form id="form1" runat="server">
      <div>
          <center>
              <h1>Admin Login</h1>
              <table>
                  <tr>
                      <td>
                          <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label><br />
                          <asp:TextBox ID="txtunm" runat="server" CssClass="form-control" placeholder="Enter Unique UserName" ></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
                          <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your Password"></asp:TextBox>
                      </td>
                  </tr>
                  
              </table>
              <asp:Button ID="btnLogin" runat="server" Text="Button" OnClick="btnLogin_Click" />
          </center>
      </div>
  </form>
</body>
</html>
