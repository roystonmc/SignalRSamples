<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PartialUpdatePage.aspx.cs" Inherits="SimpleWebFormsTestCSharp.PartialUpdatePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">

        function EchoUserInput()
        {
            var echoElem = document.getElementById("EnteredValue");
            SimpleWebFormsTestCSharp.WebService1.EchoInput(echoElem.value, SucceededCallback);
        }

        function SucceededCallback(result)
        {
            var RsltElem = document.getElementById("Results");
            RsltElem.innerHTML = result;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/WebService1.asmx" />
            </Services>
        </asp:ScriptManager> 
      <div>
    
        <br />
        <br />
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
            <asp:Label ID="Label1" runat="server" Text="Label" Width="70px"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Press" />
              </ContentTemplate>
          </asp:UpdatePanel>
    
          <h2>Simple Web Service</h2>
          <p>Calling a simple servce that echoes the usper's input and  returns the current server time.</p>
          
          <input id="EnteredValue" type ="text" />
          <input id="EchoButton" type="button" value="Echo" onclick="EchoUserInput()" />
    </div>
     <div>
         <span id="Results"></span>
     </div>
    </form>
</body>
</html>
