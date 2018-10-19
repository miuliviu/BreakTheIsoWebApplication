using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace BreakTheIsoWebApplication
{
    public partial class AlbumPreview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string albumParamValue = Request.QueryString["album"].ToString();

            this.Title = albumParamValue + " - BreakTheISO";

            #region Album Photos Generation
            DirectoryInfo albumDirectoryInfo = new DirectoryInfo(AppDomain.CurrentDomain.BaseDirectory + @"Albums\"+albumParamValue);
            FileInfo[] albumImagesCount = albumDirectoryInfo.GetFiles();
            if (albumImagesCount.Length != 0)
            {
                int counter = 0 ;
                int idCounter = 0;

                imagesBox.InnerHtml += "<div class=\"row w-100\">"+
                                            "<div class=\"col-md-12\">"+
                                                "<h2 id = \"frontTitle\" class=\"text-center\">"+albumImagesCount.Length.ToString()+" - Photos</h2>"+
                                            "</div>"+
                                        "</div>";

                foreach (FileInfo imageName in albumImagesCount)
                {
                    if(counter==0)
                    {
                        imagesBox.InnerHtml += "<div class =\"row rounded d-flex justify-content-center flex-wrap w-100 pt-4 mb-3\">"; 
                    }

                    imagesBox.InnerHtml += "<div class=\"col-md-4\">"+
                                                "<div class=\"thumbnail\">"+
                                                    "<a href=\"Resources/one.png\" data-toggle=\"modal\" data-target=\"#myModal"+idCounter+"\">"+
                                                    "<img class=\"rounded\" src=\"Albums"+"/"+albumParamValue+"/"+imageName+"\" alt=\"Lights\" style=\"width:100%\" >"+
                                                    "<div class=\"caption\">"+
                                                        "<p class=\"text-center\">Lorem ipsum...test</p>"+
                                                    "</div>"+
                                                      "</a>"+
                                                "</div>"+
                                            "<div class=\"modal fade\" id=\"myModal"+idCounter+"\">"+
                                                "<div class=\"modal-dialog\">"+
                                                    "<div class=\"modal-content\">"+
                                                        "<div class=\"modal-body\">"+
                                                            "<img src=\"Albums" + "/" + albumParamValue + "/" + imageName + "\" alt=\"test\" style=\"width:100%\">" +
                                                        "</div>"+
                                                        "<div class=\"modal-footer d-flex justify-content-center align-content-center\">"+
                                                            "<button type = \"button\" class=\"btn btn-success\" data-dismiss=\"modal\">Close</button>"+
                                                        "</div>"+
                                                    "</div>"+
                                                "</div>"+
                                            "</div>"+
                                        "</div>";

                    counter++;
                    idCounter++;
                    if (counter == 3)
                    {
                        imagesBox.InnerHtml += "</div>";
                        counter = 0;
                    }
                }
            }
                #endregion

            }
    }
}