using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BreakTheIsoWebApplication
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Album Generation
            //Look inside Albums Folder and generate an album card for each Album Directory found, using the first image found inside it
            //TODO: Generate albums with Description and Title for each of it, using a dictionary hardcoded here 
            DirectoryInfo albumDirectoryInfo = new DirectoryInfo(AppDomain.CurrentDomain.BaseDirectory+@"Albums");
            DirectoryInfo[] albumDirectoriesCount= albumDirectoryInfo.GetDirectories();
            if (albumDirectoriesCount.Length != 0)
            {
  
                int counter = 0;
                foreach(DirectoryInfo albumFolder in albumDirectoriesCount)
                {
                    if(counter==0)
                    {
                        albumBox.InnerHtml += "<div class=\"row d-flex justify-content-center flex-wrap w-100 mt-2\">";
                    }

                    albumBox.InnerHtml += "<div class=\"col-lg-4 d-flex justify-content-center flex-wrap\">" +
                                            "<div class=\"card\" style=\"width: 18rem;\">" +
                                                  "<img class=\"card-img-top\" src=\"Albums/"+albumFolder.ToString()+"/"+albumFolder.GetFiles()[0].ToString()+"\" alt=\"Card image cap\">" +
                                                  "<div class=\"card-body\">" +
                                                    "<h5 class=\"card-title\">Album Title</h5>" +
                                                    "<p class=\"card-text text-center\">Album summary description.</p>" +
                                                    "<a href=\"AlbumPreview?album="+ albumFolder.ToString() + "\" class=\"btn btn-primary btn-lg text-center\">Open Album</a>" +
                                                    "</div>" +
                                                "</div>" +
                                        "</div>";
                    counter++;
                    if(counter==3)
                    {
                        albumBox.InnerHtml += "</div>";
                        counter = 0;
                    }


                }
            }
            #endregion
        }
    }
}