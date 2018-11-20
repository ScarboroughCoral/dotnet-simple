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

public partial class header : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Trace.Warn("Header", "Start Header");
        Benefits benefitsList = new Benefits();
        Benefits.BenefitInfo [] benefitsArray = benefitsList.GetBenefitsList();
        dentalHyperLink.HRef = benefitsArray[0].benefitPage;
        dentalHyperLink.InnerText = benefitsArray[0].benefitName;
        medicalHyperLink.HRef = benefitsArray[1].benefitPage;
        medicalHyperLink.InnerText = benefitsArray[1].benefitName;
        retirementHyperLink.HRef = benefitsArray[2].benefitPage;
        retirementHyperLink.InnerText = benefitsArray[2].benefitName;
        lifeHyperLink.HRef = benefitsArray[3].benefitPage;
        lifeHyperLink.InnerText = benefitsArray[3].benefitName;
        //Trace.Warn("Header", "End Header");
    }
}
