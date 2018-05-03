<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="prototype.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="CSS/DefaultCSS.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="content">
        
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        
        <HeaderTemplate><div></HeaderTemplate>
            <ItemTemplate>
                <div class="rptrProduct">
                    <a href="<%# Eval ("ProductId", "Product.aspx?Id={0}") %>">
                        <div>
                            <asp:Image ID="displayProductImage" runat="server" Height="200px" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" AlternateText='<%# Eval("ProductName") %>' />

                        </div>
                        <div><%# Eval ("ProductName") %></div>
                        <div><asp:Label ID="lblProductPrice" runat="server" Text="$"></asp:Label><%# Eval ("ProductPrice") %></div>
                        <div><asp:Label ID="lblProductQty" runat="server" Text="Qty: "></asp:Label><%# Eval ("ProductQuantity") %></div>
                    </a>
                </div>
            </ItemTemplate>
            <FooterTemplate></div></FooterTemplate>
        
        
        
        
        
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626476_hotelsConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]" OnSelecting="SqlDataSource1_Selecting1"></asp:SqlDataSource>
    <br />
    <br />
    <br />
      </section>
</asp:Content>
