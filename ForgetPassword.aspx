<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    


   <div style="margin-bottom: 0px">
      <table>
          <captionclass="shovo" style="text-align:left;color: #0000FF;font-size:large;text-decoration:underline;">
          <strong >Forget Password:</strong>
            </captionclass>
                         <tr>  
                        <tdclass="style1" style="width=225px">  
   
                        </td>  
                        <tdclass="style2" style="width=155px">  
   
                        </td>  
                        <td class="style5" style="height: 9px">  
 </td>  
                        <td class="style5" style="height: 9px">  
 </td>  
                    </tr> 
           <tr>  
                      <div class="shanto">
                       <td>
                    <h2>Email Id:</h2>  
                        </td> 
                           </div>
                          <div class="shovo"> 
                        <td>  
                          
                             <asp:TextBox ID="TextBox1" runat="server" Height="28px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            
                        </td>  
                              </div>
                        <td>  
 </td>  
           </tr>
            
                    <tr>  
                        <div class="Boby">
                        <td>  
                             
                      <asp:Label ID="abcd" runat="server" Text=""></asp:Label>
                        </td>  
                            </div>
                        <div>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back to Homepage</asp:LinkButton>  
                            
                        </td>
                            </div>
                        <div>  
                        <td>  
                                                      
                            
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/> 
                        </td>
                            </div>  
                        <td>  
 </td>  
                    </tr>  
           
                </table>  
            </div>  







</asp:Content>