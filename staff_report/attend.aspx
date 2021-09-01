<%@ Page Title="" Language="C#" MasterPageFile="~/a.Master" AutoEventWireup="true" CodeBehind="attend.aspx.cs" Inherits="staff_report.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="conbody" runat="server">
    <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 63px; top: 217px; position: absolute" Text="Slot" Font-Bold="true"></asp:Label>
    <p>
    </p>
    <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 58px; top: 427px; position: absolute" Text="Student list" Font-Bold="true"></asp:Label>
    <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 63px; top: 167px; position: absolute" Text="Date"  Font-Bold="true"></asp:Label>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" style="z-index: 1; left: 63px; top: 257px; position: absolute; height: 27px; width: 82px">
    <asp:ListItem>9:30 </asp:ListItem>
          <asp:ListItem>11:30 </asp:ListItem>
          <asp:ListItem>2:30 </asp:ListItem>
          <asp:ListItem>4:30 </asp:ListItem>
    </asp:CheckBoxList>
    <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 131px; top: 164px; position: absolute" TextMode="Date"></asp:TextBox>
    <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 232px; top: 378px; position: absolute; width: 220px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" height="26px" OnClick="Button1_Click" style="z-index: 1; left: 503px; top: 374px; position: absolute" Text="ADD" width="63px"  Font-Bold="true" />
    <asp:Button ID="Button3" runat="server" style="z-index: 1; left: 150px; top: 778px; position: absolute" Text="CLEAR" height="26px" OnClick="Button3_Click" width="63px" Font-Bold="true" />
    <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 58px; top: 381px; position: absolute" Text="SEARCH STUDENT" Font-Bold="true"></asp:Label>
    <asp:Button ID="Button2" runat="server" height="26px" style="z-index: 1; left: 58px; top: 778px; position: absolute" Text="SAVE" width="63px" OnClick="Button2_Click"  Font-Bold="true"/>
    <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" style="z-index: 1; left: 58px; top: 461px; position: absolute; height: 300px; width: 495px" AutoPostBack="True"></asp:ListBox>
</asp:Content>
