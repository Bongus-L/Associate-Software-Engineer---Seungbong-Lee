using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;
using Newtonsoft.Json;

namespace Associate_Software_Engineer___Seungbong_Lee
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Display error message if image = 0.
        private void ShowMessage()
        {
            string message = "Oops we ran out of that... Try different sauce or bread.";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }

        // If button clicked, send GET request.
        // User defined parameters: 1. mime type 2. cat category
        protected void GenerateImageButton_Click(object sender, EventArgs e)
        {
            RestClient client = new RestClient("https://api.thecatapi.com/v1/images/");
            RestRequest request = new RestRequest($"search?mime_types={MimeTypeList.SelectedValue}&category_ids={CategoryIdList.SelectedValue}", Method.Get);
            dynamic responseJson = JsonConvert.DeserializeObject(client.Execute(request).Content);

            try
            {
                CatImage.ImageUrl = responseJson[0]["url"];
            }
            catch (ArgumentOutOfRangeException)
            {
                ShowMessage();
                return;
            }
        }
    }
}