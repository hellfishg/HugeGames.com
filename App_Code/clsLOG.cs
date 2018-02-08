using System;
using System.IO;

public class clsLOG
{
    public static void generateError(string stMensaje)
    {
        StreamWriter swFile = default(StreamWriter);
        string stFile = null;
        string stPathError = "\\log\\log_error.txt";

        try
        {
            if (stPathError.Length > 0)
            {
                stFile = System.Web.HttpContext.Current.Server.MapPath(".") + stPathError;
                swFile = new StreamWriter(stFile, true);
                swFile.Write(Convert.ToString(DateTime.Now) + "-" + stMensaje + Environment.NewLine);
                swFile.Close();
            }

        }
        catch
        {
        }
    }
}
