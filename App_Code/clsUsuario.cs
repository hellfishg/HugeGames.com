using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsUsuario
/// </summary>
public class clsUsuario
{
    public string User { get; set; }
    public string Email { get; set; }
    public int Perfil { get; set; }
    public bool IsLoged { get; set; }
    public clsUsuario()
    {
        IsLoged = false;
        Perfil = 0;
    }
}