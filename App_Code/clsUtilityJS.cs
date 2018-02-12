using System.Web.UI;
public class clsUtilityJS
{
    private Page page;
    public clsUtilityJS(Page extPage)
    {
        page = extPage;
    }

    /// <summary>
    /// Metodo para invocar una funcion de js desde servidor.
    /// </summary>
    /// <param name="scriptName">
    /// Id del script
    /// </param>
    /// <param name="scriptContent">
    /// Contenido del script. Puede ser el nombre de una funcion que ya tengamos declarada o un script escrito de 0
    /// </param>

    private void registerScript(string scriptName, string scriptContent)
    {
        ScriptManager.RegisterStartupScript(page, page.GetType(), scriptName, scriptContent, true);
    }

    /// <summary>
    /// Metodo para mostrar un cartel de alerta.
    /// Para mas informacion consultar https://sweetalert2.github.io/
    /// </summary>
    /// <param name="title">
    /// Titulo de la alerta
    /// </param>
    /// <param name="content">
    /// Texto de la alerta. Puede ser html
    /// </param>
    /// <param name="type">
    /// error => mensaje de error
    /// info => informacion
    /// success => confirmacion
    /// </param>

    public void swal(string title, string content, string type)
    {
        registerScript("confirm", "showMessage('" + title + "', '" + content + "', '" + type + "')");
    }
}