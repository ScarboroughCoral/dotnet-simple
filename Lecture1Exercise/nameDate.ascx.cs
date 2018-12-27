using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class nameDate : System.Web.UI.UserControl
{
    public string EmpName
    {
        get
        {
            Session["Name"] = nameTextBox.Text;
            return nameTextBox.Text;
        }
        set
        {
            nameTextBox.Text = value;
        }
    }

    public DateTime EmpDOB
    {
        get
        {
            Session["Birth"] = Convert.ToDateTime(birthTextBox.Text);
            return Convert.ToDateTime(birthTextBox.Text);
        }
        set
        {
            birthTextBox.Text = value.ToString();
        }
    }
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
    }
}