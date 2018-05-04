using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal;
using PayPal.Api;


namespace prototype
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void PurchaseBtn_Click(object sender, EventArgs e)
        {
            DropDownList DDLProductQty = (DropDownList)FormView1.FindControl("DdlstQuantity");
            Label productPrice = (Label)FormView1.FindControl("ProPriceLbl");
            Label prodID = (Label)FormView1.FindControl("ProImageLbl");
            decimal shippingPackagingCost = 5.00m;
            int proPrice1;
            int.TryParse((string)productPrice.Text, out proPrice1);
                int qtyOfProducts = int.Parse(DDLProductQty.SelectedValue);
            decimal subTotal = (qtyOfProducts * proPrice1);
            decimal totalAmount = subTotal + shippingPackagingCost;

            
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            
            var apiContext = new APIContext(accessToken);

            var productStock = new Item();
            productStock.name = "Products";
            productStock.currency = "SGD";
            productStock.price = proPrice1.ToString();
            productStock.sku = prodID.Text; 
            productStock.quantity = qtyOfProducts.ToString();



            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = shippingPackagingCost.ToString();
            transactionDetails.subtotal = subTotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "SGD";
            transactionAmount.total = totalAmount.ToString("0.00");
            transactionAmount.details = transactionDetails;

            var transaction = new Transaction();
            transaction.description = "Orders from Palladium Boots";
            transaction.invoice_number = Guid.NewGuid().ToString(); 
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { productStock }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            string strPathAndQuery = HttpContext.Current.Request.Url.PathAndQuery;
            string strUrl = HttpContext.Current.Request.Url.AbsoluteUri.Replace(strPathAndQuery, "/");

            redirectUrls.cancel_url = strUrl + "cancel.aspx";
            redirectUrls.return_url = strUrl + "completePurchase.aspx";
            try
            {
                var payment = Payment.Create(apiContext, new Payment
                {
                    intent = "sale",
                    payer = payer,
                    transactions = new List<Transaction> { transaction },
                    redirect_urls = redirectUrls
                });

                Session["paymentId"] = payment.id;

                foreach (var link in payment.links)
                {
                    if (link.rel.ToLower().Trim().Equals("approval_url"))
                    {
                        
                        Response.Redirect(link.href);
                    }
                }



            }
            catch (PaymentsException ex)
            {
                Response.Write(ex.Response);
            }
        }
    
    }
}