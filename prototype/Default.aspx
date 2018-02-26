<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="prototype.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="CSS/DefaultCSS.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrap"></div>
    <div id="columns" class="columns_4">
        <figure>
            <img src="Images/Products/rp1.jpg" />
            <figcaption>boots1</figcaption>
            <span class="price">$350</span>
            <a class="button" href="#">Buy Now</a>
        </figure>

        <figure>
           <img src="Images/Products/rp2.jpg" />
            <figcaption>boots2</figcaption>
            <span class="price">$235</span>
            <a class="button" href="#">Buy Now</a>
        </figure>

        <figure>
            <img src="Images/Products/rp3.jpg" />
            <figcaption>boots3</figcaption>
            <span class="price">$400</span>
            <a class="button" href="#">Buy Now</a>
        </figure>

        <figure>
            <img src="Images/Products/rp4.jpg" />
            <figcaption>boots4</figcaption>
            <span class="price">$190</span>
            <a class="button" href="#">Buy Now</a>
        </figure>

        <figure>
            <img src="Images/Products/rp5.jpg" />
            <figcaption>boots5</figcaption>
            <span class="price">$470</span>
            <a class="button" href="#">Buy Now</a>
        </figure>

        <figure>
            <img src="Images/Products/rp6.jpg" />
            <figcaption>boots6</figcaption>
            <span class="price">$250</span>
            <a class="button" href="#">Buy Now</a>
        </figure>


    </div>
</asp:Content>
