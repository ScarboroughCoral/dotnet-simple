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

        //BirthCompareValidator.ValueToCompare = System.DateTime.Now.ToShortDateString();
        //Trace.Warn("6666", "Beginning of Page_Load of Life.aspx");
    }

    protected void On_Save_Click(object sender,EventArgs e)
    {
        if (Page.IsValid)
        {
            pageValidatedInfo.Text = "有效";
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