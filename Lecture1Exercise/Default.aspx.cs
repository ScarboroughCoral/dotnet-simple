using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        //Trace.Warn("2310", "Beginning of Page_Load");
        //Trace.Warn("2310", "IsPostBack=" + Page.IsPostBack);
        if (!Page.IsPostBack)
        {
            sectionsLabel.DataBind();

            Benefits benefits = new Benefits();
            foreach (Benefits.BenefitInfo benefit in benefits.GetBenefitsList())
            {
                ListBenefitsCheckBoxList.Items.Add("<a href=" + benefit.benefitPage + ">" + benefit.benefitName + "</a><br/> ");
            }



            HttpCookie cookie = Request.Cookies["Benefits"];
            if (cookie != null)
            {
                string doctor = cookie.Values["doctor"];
                string life = cookie.Values["life"];
                doctorTextBox.Text = doctor;
                lifeTextBox.Text = life;
            }

        }

        
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        sectionsLabel.Text += "<br/>";
        foreach (ListItem item in ListBenefitsCheckBoxList.Items)
        {
            if (item.Selected)
                sectionsLabel.Text +=  item.Text;
        }
    }
}