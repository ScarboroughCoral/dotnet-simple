using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// DentalService 的摘要说明
/// </summary>
[WebService(Namespace = "http://microsoft.com/webservices/",Description ="This XML Web service contains information about the dentists.")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
// [System.Web.Script.Services.ScriptService]
public class DentalService : System.Web.Services.WebService
{
    private SqlConnection dentistsConnection;
    private DataSet dentistsDataSet;
    private SqlDataAdapter dentistsSqlDataAdapter;

    public DentalService()
    {

        dentistsConnection = new SqlConnection();
        //如果使用设计的组件，请取消注释以下行 
        //InitializeComponent(); 
    }
    [WebMethod(Description ="This XML Web service returns all the dentists.")]
    public DataSet GetAllDentists()
    {
        string dentistsString = "Select * from dentists";
        dentistsConnection.ConnectionString = ConfigurationManager.ConnectionStrings["dentistsConnectionString1"].ConnectionString;

        dentistsSqlDataAdapter = new SqlDataAdapter(dentistsString, dentistsConnection);
        dentistsDataSet = new DataSet();
        dentistsSqlDataAdapter.Fill(dentistsDataSet,"dentists");
        dentistsConnection.Close();
        return dentistsDataSet;
    }

    [WebMethod(Description = "This XML Web service method returns the dentists from a supplied postal code.")]
    public DataSet GetDentistsByPostalCode(string postalCodeString)
    {
        SqlDataAdapter postCodeSqlDataAdapter;
        DataSet postCodeDataSet = new DataSet();
        SqlParameter workParam = null;
        dentistsConnection.ConnectionString = ConfigurationManager.ConnectionStrings["dentistsConnectionString1"].ConnectionString;
        postCodeSqlDataAdapter = new
           SqlDataAdapter("DentistsByPostalCode", dentistsConnection);
        postCodeSqlDataAdapter.SelectCommand.CommandType =
           CommandType.StoredProcedure;
        workParam = new SqlParameter("@PostalCode",
           System.Data.SqlDbType.NVarChar);
        workParam.Direction = ParameterDirection.Input;
        workParam.Value = postalCodeString;
        postCodeSqlDataAdapter.SelectCommand.Parameters.Add(workParam);
        postCodeSqlDataAdapter.Fill(postCodeDataSet, "DentistsPoCode");
        dentistsConnection.Close();
        return postCodeDataSet;
    }

    //[WebMethod]
    //public string HelloWorld()
    //{
    //    return "Hello World";
    //}

}
