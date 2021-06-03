<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuizForm.aspx.cs" Inherits="QuizAssi.QuizForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 20px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
             </div>
             <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">HTML</asp:LinkButton>
&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server">C#</asp:LinkButton>
&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server">CSS</asp:LinkButton>
&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server">ASP.NET</asp:LinkButton>
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:HiddenField ID="HiddenField1" runat="server" Value="c" />
                1.HTML stands for?<br />
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1" BorderColor="Red" BorderStyle="Dotted" ForeColor="#0066FF">
                    <asp:ListItem Value="a">hyper text</asp:ListItem>
                    <asp:ListItem Value="b">hyper link</asp:ListItem>
                    <asp:ListItem Value="c">hyper text markup language</asp:ListItem>
                    <asp:ListItem Value="d">markup</asp:ListItem>
                </asp:RadioButtonList>
                <br />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:HiddenField ID="HiddenField2" runat="server" Value="a" />
                2.which defines the declaration that this document is an html document?<br />
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged1" BorderColor="Red" BorderStyle="Dashed" ForeColor="#0099FF">
                    <asp:ListItem Value="a">!DOCTYPE html</asp:ListItem>
                    <asp:ListItem Value="b">doctype</asp:ListItem>
                    <asp:ListItem Value="c">doctype.html</asp:ListItem>
                    <asp:ListItem Value="d">html doc</asp:ListItem>
                </asp:RadioButtonList>
                <br />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:HiddenField ID="HiddenField3" runat="server" Value="b" />
                3.How many tags are in a regulur element?<br />
                <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged1" BorderColor="#CC0000" BorderStyle="Double" ForeColor="#0066FF" Width="148px">
                    <asp:ListItem Value="a">1</asp:ListItem>
                    <asp:ListItem Value="b">2</asp:ListItem>
                    <asp:ListItem Value="c">3</asp:ListItem>
                    <asp:ListItem Value="d">4</asp:ListItem>
                </asp:RadioButtonList>
                <br />
            </asp:View>
            <asp:View ID="View4" runat="server">
                <asp:HiddenField ID="HiddenField4" runat="server" Value="a" />
                4.&lt;body&gt; is this an opening tag or a closing tag?<br />
                <asp:RadioButtonList ID="RadioButtonList4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList4_SelectedIndexChanged1" BorderColor="Red" BorderStyle="Groove" ForeColor="#0066FF" Width="156px" >
                    <asp:ListItem Value="a">opening</asp:ListItem>
                    <asp:ListItem Value="b">closing</asp:ListItem>
                    <asp:ListItem Value="c">1 and 2</asp:ListItem>
                    <asp:ListItem Value="d">none</asp:ListItem>
                </asp:RadioButtonList>
                MARKS<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" Visible="False"></asp:TextBox>
                &nbsp;<br />
            </asp:View>
        </asp:MultiView>
    </form>
  
</body>
</html>
