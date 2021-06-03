<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="QuizAssi.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              userid:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            useremail:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            userpassword:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            username<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="register" />
            <br />

        </div>
    </form>
</body>
</html>
