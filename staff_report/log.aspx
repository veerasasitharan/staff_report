<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="staff_report.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="conbody" runat="server">
    <link href="style.css" rel="stylesheet" />
   
    <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 465px; top: 268px; position: absolute" Text="ID"  Font-Bold="True" ForeColor="White"></asp:Label>
    <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 465px; top: 336px; position: absolute" Text="PASSWORD"  Font-Bold="True" ForeColor="White"></asp:Label>
    <asp:Label ID="Label3" runat="server" ForeColor="White" style="z-index: 1; left: 465px; top: 203px; position: absolute" Text="LOGIN" Font-Bold="true"></asp:Label>
    <asp:TextBox ID="TextBox1"  class="txt1" runat="server" placeholder="ADMIN ID OR USER ID" style="z-index: 1; left: 610px; top: 266px; position: absolute; height: 22px; width: 178px;" outline="none" border="none"></asp:TextBox>
    <asp:TextBox ID="TextBox2"  class="txt2" runat="server" placeholder="PASSWORD" style="z-index: 1; left: 610px; top: 330px; position: absolute; height: 22px; width: 179px;" TextMode="Password" outline="none" border="none" ForeColor="#CC0000"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" class="btn1" OnClick="Button1_Click" style="z-index: 1; left: 610px; top: 390px; position: absolute; height: 30px; width: 186px;" Text="LOGIN "  Font-Bold="true" border="none" outline="none"  />
    
    
    
    
    
</asp:Content>
