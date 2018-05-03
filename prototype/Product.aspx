<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="prototype.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductId" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            ProductId:
            <asp:Label ID="ProIdLbl1" runat="server" Text='<%# Eval("ProductId") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProNameTxtBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductQuantity:
            <asp:TextBox ID="ProQuantityTxtBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
            <br />
            ProductPrice:
            <asp:TextBox ID="ProPriceTxtBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ProductSize:
            <asp:TextBox ID="ProSizeTxtBox" runat="server" Text='<%# Bind("ProductSize") %>' />
            <br />
            ProductImage:
            <asp:TextBox ID="ProImageTxtBox" runat="server" Text='<%# Bind("ProductImage") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ProductId:
            <asp:TextBox ID="ProIdTxtBox" runat="server" Text='<%# Bind("ProductId") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProNameTxtBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductQuantity:
            <asp:TextBox ID="ProQuantityTxtBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
            <br />
            ProductPrice:
            <asp:TextBox ID="ProPriceTxtBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ProductSize:
            <asp:TextBox ID="ProSizeTxtBox" runat="server" Text='<%# Bind("ProductSize") %>' />
            <br />
            ProductImage:
            <asp:TextBox ID="ProImageTxtBox" runat="server" Text='<%# Bind("ProductImage") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("ProductImage") %>' />
            <br />
            ProductId:
            <asp:Label ID="ProIdLbl" runat="server" Text='<%# Eval("ProductId") %>' />
            <br />
            ProductName:
            <asp:Label ID="ProNameLbl" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductQuantity:
            <asp:Label ID="ProQuantityLbl" runat="server" Text='<%# Bind("ProductQuantity") %>' />
            <br />
            ProductPrice:
            <asp:Label ID="ProPriceLbl" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ProductSize:
            <asp:Label ID="ProSizeLbl" runat="server" Text='<%# Bind("ProductSize") %>' />
            <br />
            ProductImage:
            <asp:Label ID="ProImageLbl" runat="server" Text='<%# Bind("ProductImage") %>' />
            <br />
            <asp:DropDownList ID="DdlstQuantity" runat="server">
                <asp:ListItem Selected="True" Value="None">Choose</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem> 
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626476_hotelsConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [tblProduct] WHERE ([ProductId] = @ProductId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductId" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="PurchaseBtn" runat="server" Text="Buy Now" OnClick="PurchaseBtn_Click" />
    <br />
    </asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
