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

public partial class dental : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GetAllDentistsButton_Click(object sender, EventArgs e)
    {
        //TODO Lab 13: call the XML Web service method
        //GetAllDentists
        DentalService getAllDentistsProxy = new DentalService();
        DataSet allDentistsDataSet = null;
        allDentistsDataSet = getAllDentistsProxy.GetAllDentists();
        dentistsGridView.DataSource = allDentistsDataSet;
        dentistsGridView.DataBind();

    }
    protected void submitButton_Click(object sender, EventArgs e)
    {
        //TODO Lab 13: call the XML Web service method
        //GetDentistsByPostalCode
        DentalService getDentistsByPostCodeProxy = new DentalService();
        DataSet dentistsByPostCodeDataSet = null;
        dentistsByPostCodeDataSet = getDentistsByPostCodeProxy.GetDentistsByPostalCode(postalCodeTextBox.Text);
        dentistsGridView.DataSource = dentistsByPostCodeDataSet;
        dentistsGridView.DataBind();
    }
}
