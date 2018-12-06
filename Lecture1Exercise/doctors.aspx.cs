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
using System.Data.SqlClient;

public partial class doctors : System.Web.UI.Page
{
    private string myDataString;
    private SqlConnection doctorsConnection;
    private SqlDataAdapter doctorsSqlDataAdapter;
    private DataSet doctorsDataSet;
    private SqlCommand doctorsSqlCommand;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            doctorsGridView.DataSource = doctorsDataSource;
            //TODO Lab8: Bind the GridView to the doctors table.

            doctorsGridView.DataBind();
            //TODO Lab8: Bind the list to city field in the doctors table.
            CreateDataSet();
            SqlCommand citiesSqlCommand = new SqlCommand("SELECT city FROM doctors", doctorsConnection);
            SqlDataReader citiesSqlDataReader = citiesSqlCommand.ExecuteReader();

            citiesList.DataSource = citiesSqlDataReader;
            citiesList.DataTextField = "city";
            citiesList.DataBind();

            citiesSqlDataReader.Close();
            doctorsConnection.Close();


            //TODO Lab9: Bind the listbox to the getUniqueCities stored procedure.

            //TODO Lab8: Add the "All" item to the list and select it.
            citiesList.Items.Add("ALL");
            citiesList.SelectedIndex = citiesList.Items.Count-1;

            // Hide the specialties ListBox.
            specialtiesListBox.Visible = false;
            specialtiesLabel.Visible = false;

        }
    }

    private void Reset()
    {
		// Reset page index to 0.
		doctorsGridView.PageIndex = 0;

		// Remove the selection from the datagrid.
		doctorsGridView.SelectedIndex = -1;

		// Hide the specialties listbox.
        specialtiesListBox.Visible = false;
        specialtiesLabel.Visible = false;
    }
    
    protected void Page_Index_Changing(object sender, GridViewPageEventArgs e)
    {
        doctorsGridView.PageIndex = e.NewPageIndex;
    }
    protected void Page_Index_Changed(object sender, EventArgs e)
    {
        CreateDataSet();
        string cityName = citiesList.SelectedValue;
        if (cityName == "ALL")
        {
            doctorsGridView.DataSource = doctorsDataSource;

        }
        else
        {

            DataView doctorsDataView = doctorsDataSet.Tables[0].AsDataView();
            doctorsDataView.RowFilter = "city='" + cityName + "'";
            doctorsGridView.DataSource = doctorsDataView;
        }
        doctorsGridView.DataBind();
    }
    protected void City_Selected_Index_Changed(object sender, EventArgs e)
    {

        string cityName = citiesList.SelectedValue;
        if(cityName=="ALL")
        {
            doctorsGridView.DataSource = doctorsDataSource;
        }
        else {

            CreateDataSet();
            DataView doctorsDataView = doctorsDataSet.Tables[0].AsDataView();
            doctorsDataView.RowFilter = "city='" + cityName + "'";
            doctorsGridView.DataSource = doctorsDataView;
        }

        Reset();
        doctorsGridView.DataBind();

    }

    protected void Submit_Clicked(object sender,EventArgs e)
    {
        if (doctorsGridView.SelectedIndex != -1)
        {
            string doctorsName="";
            doctorsName = doctorsGridView.SelectedRow.Cells[2].Text + " " + doctorsGridView.SelectedRow.Cells[3].Text;
            Response.Redirect("medical.aspx?pcp=" + doctorsName);
        }
    }
    private void CreateDataSet()
    {
        myDataString = ConfigurationManager.ConnectionStrings["doctorsConnectionString1"].ConnectionString;
        doctorsConnection = new SqlConnection(myDataString);
        doctorsConnection.Open();
        if (doctorsConnection.State.ToString() == "Open")
        {
            doctorsDataSet = new DataSet();
            doctorsSqlCommand = new SqlCommand(doctorsDataSource.SelectCommand, doctorsConnection);
            doctorsSqlDataAdapter = new SqlDataAdapter(doctorsSqlCommand);
            doctorsSqlDataAdapter.Fill(doctorsDataSet, "doctors");
        }
    }


    
}

