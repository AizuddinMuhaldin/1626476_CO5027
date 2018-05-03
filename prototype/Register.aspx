<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="prototype.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
     Username<asp:TextBox ID="RegUsername" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="reqUsername" runat="server" ControlToValidate="RegUsername" ErrorMessage="please enter the username" Display="None"></asp:RequiredFieldValidator>
     <br />
     <br />
     
    Password<asp:TextBox ID="RegPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqPass" runat="server" ControlToValidate="RegPassword" Display="None" ErrorMessage="please enter password"></asp:RequiredFieldValidator>
    <br />
    <br />

    <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" />
    <br />
    <br />
    
    <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    <br />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
