using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Text.RegularExpressions;
using HtmlAgilityPack;

namespace theme
{
    public partial class SeoOptimizer : System.Web.UI.Page
    {

            protected void btnFetchMetaTags_Click(object sender, EventArgs e)
        {
            String strUrl = txtUrl.Text;
            try
            {
                //To Get Title
                WebClient x = new WebClient();
                string pageSource = x.DownloadString(strUrl);
                txtTitle.Text = Regex.Match(pageSource, @"\<title\b[^>]*\>\s*(?<Title>[\s\S]*?)\</title\>", RegexOptions.IgnoreCase).Groups["Title"].Value;
                //Creating a method to get Meta Tags like description and keyword meta tags
                GetMetaTagsDetails(strUrl);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message.ToString());
            }
        }
        private void GetMetaTagsDetails(string strUrl)
        {
            //Get Meta Tags
            var webGet = new HtmlWeb();
            var document = webGet.Load(strUrl);
            var metaTags = document.DocumentNode.SelectNodes("//meta");
            if (metaTags != null)
            {
                foreach (var tag in metaTags)
                {
                    if (tag.Attributes["name"] != null && tag.Attributes["content"] != null && tag.Attributes["name"].Value == "description")
                    {
                        txtDesc.Text = tag.Attributes["content"].Value;
                    }

                    if (tag.Attributes["name"] != null && tag.Attributes["content"] != null && tag.Attributes["name"].Value == "keywords")
                    {
                        txtKeywords.Text = tag.Attributes["content"].Value;
                    }
                }
            }
        }

    }
}

