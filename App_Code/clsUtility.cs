using System;
using System.Collections.Generic;
using System.IO;
using System.Web;

public class clsUtility
{
    public static string rColor(ref List<string> list)
    {
        while (true)
        {
            var random = new Random();
            var color = String.Format("#{0:X6}", random.Next(16777216));
            if (!list.Contains(color))
            {
                return color;
            }
        }
    }

    public static string openTextFile(string File)
    {
        try
        {
            var path = HttpContext.Current.Server.MapPath("~");
            using (StreamReader sr = new StreamReader(path + "\\templates\\graficos\\" + File))
            {
                string line;
                line = sr.ReadToEnd();
                return line;
            }
        }
        catch (Exception e)
        {
            return "";
        }
    }
}