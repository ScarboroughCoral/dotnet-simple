using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class life : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            
            if (Session["Name"] != null && Session["Birth"] != null)
            {
                nameTextBox.Text = Session["Name"].ToString();
                birthTextBox.Text = Session["Birth"].ToString();
            }
        }
        //BirthCompareValidator.ValueToCompare = System.DateTime.Now.ToShortDateString();
        //Trace.Warn("6666", "Beginning of Page_Load of Life.aspx");
    }

    protected void On_Save_Click(object sender,EventArgs e)
    {
        if (Page.IsValid)
        {
            pageValidatedInfo.Text = "The page is valid";
            Session["Name"] = nameTextBox.Text;
            Session["Birth"] = birthTextBox.Text;

            HttpCookie getCookie = Request.Cookies["Benefits"];
            string doctor = "";
            string life = "";

            if (getCookie != null)
            {
                doctor = getCookie.Values["doctor"];
                life = getCookie.Values["life"];
            }

            // Build the term string.
            if (longTermCheckBox.Checked)
            {
                if (shortTermCheckBox.Checked)
                {
                    life = "Short Term and Long Term";
                }
                else
                {
                    life = "Long Term";
                }
            }
            else if (shortTermCheckBox.Checked)
            {
                life = "Short Term";
            }
            else
            {
                life = "No Term";
            }

            life += ": Coverage = $" + coverageTextBox.Text;

            HttpCookie newCookie = new HttpCookie("Benefits");
            newCookie.Expires = DateTime.Now.AddDays(30);
            newCookie.Values.Add("doctor", doctor);
            newCookie.Values.Add("life", life);
            Response.Cookies.Add(newCookie);
            Response.Redirect("default.aspx");
        }

        else
        {
            pageValidatedInfo.Text = "无效";
        }
           
    }
    //protected void On_Date_Change(object sender, EventArgs e)
    //{
    //    birthTextBox.Text =  Calendar1.SelectedDate.ToShortDateString();
    //}
}