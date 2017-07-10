

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
 <html xmlns="http://www.w3.org/1999/xhtml">
 <head id="Head1" runat="server">
      <title></title>
      <style type="text/css">
      
      </style>
 </head>
 <body>
      <form id="form1" runat="server">
      <div>
         <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
         </asp:ToolkitScriptManager>
      <center>
       Please Enter Password: <asp:TextBox ID="TextBox1" runat="server"
TextMode="Password"></asp:TextBox>
      </center><br />
       <asp:PasswordStrength ID="PasswordStrength1" runat="server" DisplayPosition="RightSide" StrengthIndicatorType="BarIndicator"
 TargetControlID="TextBox1" PrefixText="Stength:" Enabled="true"
RequiresUpperAndLowerCaseCharacters="true" MinimumLowerCaseCharacters="1"
 MinimumUpperCaseCharacters="1" MinimumSymbolCharacters="1"
MinimumNumericCharacters="1" PreferredPasswordLength="10"
 TextStrengthDescriptions="VeryPoor; Weak; Average; Strong; Excellent"
StrengthStyles="VeryPoor; Weak; Average; Excellent; Strong;"
 CalculationWeightings="25;25;15;35" BarBorderCssClass="border"
HelpStatusLabelID="Label1">
         </asp:PasswordStrength>
      </div>
      <br />
      <br /><br />
      <br />
      <div>
      <asp:PasswordStrength ID="PasswordStrength2" runat="server"
DisplayPosition="BelowLeft" StrengthIndicatorType="Text"
 TargetControlID="TextBox1" PrefixText="Stength:" Enabled="true"
RequiresUpperAndLowerCaseCharacters="true" MinimumLowerCaseCharacters="1"
 MinimumUpperCaseCharacters="1" MinimumSymbolCharacters="1"
MinimumNumericCharacters="1" PreferredPasswordLength="10"
 TextStrengthDescriptions="VeryPoor; Weak; Average; Strong; Excellent"
BarBorderCssClass="border">
         </asp:PasswordStrength>
      </div>
      <div><br /><br />
      <center>
      <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="Medium"
ForeColor="Brown"></asp:Label>
      </center>
      </div>
      
      </form>
 </body>
 </html>