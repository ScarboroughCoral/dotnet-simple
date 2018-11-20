using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Benefits benefitsList = new Benefits(); 
        
        Response.Write("<table border=1><tr><td>Benefit Name</td><td>Web Page</td></tr>");
        foreach (Benefits.BenefitInfo benefit in benefitsList.GetBenefitsList()) 
        {
            Response.Write("<tr><td>" + benefit.benefitName + "</td><td>" + benefit.benefitPage + "</td></tr>"); 
        } 
        Response.Write("</table>"); 
    }
}
