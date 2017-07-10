<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div id="mainbody">
    <div style="width: 686px; margin-left: 204px">
        <h3 style="color:red; width: 250px; margin-left: 146px;"><b><u>Registration Form</u></b></h3>
        <table>
            <tr>
                <td colspan="2" style="align-content:center; text-align: center; height: 42px;">
                    
                    </td>
            </tr>
            <tr>
                <td colspan="2">
                 
                </td>
            </tr>
            <tr>
                <td  style="height: 42px; width: 476px;">
                    <h5><b>User Name :</b></h5>

                </td>
                <td  class="modal-lg" style="height: 42px; width: 382px">
                    
                        <ContentTemplate>
                            <div>
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" Width="300px" AutoPostBack="True" 
                                    ondatabinding="TextBox1_TextChanged" ontextchanged="TextBox1_TextChanged" ></asp:TextBox>
                                <asp:Label ID="Label1" runat="server" Text="."></asp:Label>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="UserName can not be Blank" 
                                    Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </ContentTemplate>
                    
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
         </asp:ToolkitScriptManager>
                </td>
            </tr>
            <tr>
                <td style="height: 42px; width: 476px;">
                    <h5><b>Password :</b></h5></td>
                <td height: 42px; style="height: 42px; width: 382px">
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" Width="300px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="password should not be Blank" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator>


                    <div>
                      <asp:PasswordStrength ID="PasswordStrength1" runat="server" DisplayPosition="RightSide" StrengthIndicatorType="BarIndicator"
 TargetControlID="TextBox2" PrefixText="Stength:" Enabled="true"
RequiresUpperAndLowerCaseCharacters="true" MinimumLowerCaseCharacters="1"
 MinimumUpperCaseCharacters="1" MinimumSymbolCharacters="1"
MinimumNumericCharacters="1" PreferredPasswordLength="10"
 TextStrengthDescriptions="VeryPoor; Weak; Average; Strong; Excellent"
StrengthStyles="VeryPoor; Weak; Average; Excellent; Strong;"
 CalculationWeightings="25;25;15;35" BarBorderCssClass="border"
HelpStatusLabelID="Label2">
         </asp:PasswordStrength>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </div>
      <div>
      <asp:PasswordStrength ID="PasswordStrength2" runat="server"
DisplayPosition="BelowRight" StrengthIndicatorType="Text"
 TargetControlID="TextBox2" PrefixText="    Stength:" Enabled="true"
RequiresUpperAndLowerCaseCharacters="true" MinimumLowerCaseCharacters="1"
 MinimumUpperCaseCharacters="1" MinimumSymbolCharacters="1"
MinimumNumericCharacters="1" PreferredPasswordLength="10"
 TextStrengthDescriptions="VeryPoor; Weak; Average; Strong; Excellent"
BarBorderCssClass="border">
         </asp:PasswordStrength>
                    <center>
      <asp:Label ID="Label2" runat="server" Font-Bold="true" Font-Size="Medium"
ForeColor="Brown"></asp:Label>
      </center>

















                </div>

















                </td>
            </tr>
            <tr>
                <td   style="height: 42px;width: 476px;">
                    <h5><b>ReType Password :</b></h5>

                </td>
                <td  height: 42px style="width: 382px">
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" Width="300px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                        ErrorMessage="Enter correct password" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
       
            <tr>
                <td   style="width: 476px;" class="modal-sm">
                    <h5><b>Email Id :</b></h5>

                </td>
                <td height: 42px style="width: 382px">
                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" Width="300px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter valid Email Id" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Email Field can not be Blank" 
                        Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td  style="height: 42px; width: 476px">
                    
                    </td>
                <td style="padding-top:5px; align-content:center; height: 42px; width: 382px;" class="modal-lg">
                    <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block" Font-Bold="True" Font-Size="Large" Text="Submit" Width="121px" onclick="Button1_Click" Height="56px" />
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td style="width: 476px">
                    <asp:Label ID="Label22" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </div>

</asp:Content>

