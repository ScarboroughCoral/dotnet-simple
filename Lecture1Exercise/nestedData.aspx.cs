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

public partial class nestedData : System.Web.UI.Page
{
    protected SqlDataAdapter doctorsDataAdapter;
    protected SqlConnection doctorsConnection;
    DataSet doctorsDataSet;

    protected void Page_Load(object sender, EventArgs e)
    {
        doctorsDataAdapter = new SqlDataAdapter();
        doctorsConnection = new SqlConnection();
        doctorsDataSet = new DataSet();

        doctorsConnection.ConnectionString = SqlDataSource1.ConnectionString;
        doctorsDataAdapter.SelectCommand = new SqlCommand(SqlDataSource1.SelectCommand, doctorsConnection);
        doctorsDataAdapter.Fill(doctorsDataSet, "doctors");

        doctorsConnection.ConnectionString = SqlDataSource2.ConnectionString;
        doctorsDataAdapter.SelectCommand = new SqlCommand(SqlDataSource2.SelectCommand, doctorsConnection);
        doctorsDataAdapter.Fill(doctorsDataSet, "drspecialties");

        doctorsConnection.ConnectionString = SqlDataSource3.ConnectionString;
        doctorsDataAdapter.SelectCommand = new SqlCommand(SqlDataSource3.SelectCommand, doctorsConnection);
        doctorsDataAdapter.Fill(doctorsDataSet, "specialties");

        DataRelation myDataRelation1;
        DataRelation myDataRelation2;

        // Link doctors DataTable and drspecialities DataTable together.
        DataColumn parentColumn1;
        DataColumn childColumn1;
        parentColumn1 = doctorsDataSet.Tables["doctors"].Columns["dr_id"];
        childColumn1 = doctorsDataSet.Tables["drspecialties"].Columns["dr_id"];
        myDataRelation1 = new DataRelation("rel1", parentColumn1, childColumn1);
        //TODO Lab 10: Create a nested relationship between the doctors and drspecialties DataTable objects.
        //myDataRelation1.Nested = true;

        doctorsDataSet.Relations.Add(myDataRelation1);

        // Link specialities DataTable and drspecialities DataTable together.
        DataColumn parentColumn2;
        DataColumn childColumn2;
        parentColumn2 = doctorsDataSet.Tables["specialties"].Columns["spec_id"];
        childColumn2 = doctorsDataSet.Tables["drspecialties"].Columns["specialty_id"];
        myDataRelation2 = new DataRelation("rel2", parentColumn2, childColumn2);
        //TODO Lab 10: Create a nested relationship between the specialties and drspecialties DataTable objects.
        myDataRelation2.Nested = true;

        doctorsDataSet.Relations.Add(myDataRelation2);

        // Output the result in xml.
        doctorsDataSet.WriteXml(Server.MapPath("Output.xml"), XmlWriteMode.IgnoreSchema);
        Response.Redirect("Output.xml");
    }
}