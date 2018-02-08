using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public class clsDB
{

    private string ConnString;

    private SqlConnection SqlConn;
    public clsDB()
    {
        ConnString = ConfigurationManager.ConnectionStrings["CSDB"].ConnectionString.ToString();
    }


    public DataSet ExecuteSP(string strSP, ref string strRes, Dictionary<string, string> paramList = null)
	{
		var ds = new DataSet();
		var da = new SqlDataAdapter();
		try {
			SqlConn = new SqlConnection(ConnString);
			using (SqlConn) {
				SqlCommand cmd = new SqlCommand(strSP);
				cmd.Connection = SqlConn;
				cmd.CommandType = CommandType.StoredProcedure;
				da.SelectCommand = cmd;
				if (paramList != null) {
					foreach (var item in paramList) {
						cmd.Parameters.AddWithValue("@" + item.Key, item.Value);
					}
				}
				da.Fill(ds);
				SqlConn.Close();

			}

			int tableNumber = 0;
			if (ds.Tables.Count == 0) {
				tableNumber = 0;
				//strRes = "OK"
			} else {
				tableNumber = ds.Tables.Count - 1;
				//strRes = "OK"
			}
            int x;
			if ((ds.Tables[tableNumber].Rows.Count > 0) && (int.TryParse(ds.Tables[tableNumber].Rows[0][0].ToString(), out x) || ds.Tables[tableNumber].Rows[0][0].ToString() != "ERROR")) {
				strRes = "OK";
				return ds;
			} else {
				ds = new DataSet();
				ds.Tables.Add(new DataTable());
				strRes = "ERROR";
			}
		} catch (Exception ex) {
            clsLOG.generateError("clsDB - ExecuteSP ex: " + ex.Message);
			strRes = "ERROR";
		}
        return ds;
	}

    public DataSet ExecuteQuery(string strQuery, ref string strResult)
    {

        var ds = new DataSet();
        var da = new SqlDataAdapter();
        try
        {
            SqlConn = new SqlConnection(ConnString);
            using (SqlConn)
            {
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Connection = SqlConn;
                cmd.CommandType = CommandType.Text;
                da.SelectCommand = cmd;


                da.Fill(ds);

                strResult = "OK";

                da.Dispose();
                cmd.Dispose();
                SqlConn.Close();
                SqlConn.Dispose();
            }

        }
        catch (Exception ex)
        {
            strResult = ex.Message;
        }

        return ds;
    }

    public static object ifNullNeedString(object obj)
    {
        if ((obj == null) | (object.ReferenceEquals(obj, DBNull.Value)))
        {
            return "";
        }
        else
        {
            return obj;
        }
    }

    public static object ifNullNeedZero(dynamic x)
    {
        try
        {
            if ((x == null) | (object.ReferenceEquals(x, DBNull.Value)))
            {
                return 0;
            }
            else
            {
                if (x.GetType() == typeof(string))
                {
                    if (x == "")
                        return 0;
                    else
                        return Convert.ToInt32(x);
                }
                else
                    return Convert.ToInt32(x);
            }
        }
        catch (Exception ex)
        {
            return 0;
        }
    }
}
