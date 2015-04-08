using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace SimpleWebFormsTestCSharp
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string EchoInput(string input)
        {
            var inputString = Server.HtmlEncode(input);
            if (!string.IsNullOrEmpty(inputString))
            {
                return String.Format("You entered {0}. The "
                    + "current time is {1}.", inputString, DateTime.Now);
            }
            else
            {
                return "The input string was null or empty.";
            }
        }
    }
}
