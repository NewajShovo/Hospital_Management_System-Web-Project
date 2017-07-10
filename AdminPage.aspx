<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Adminpage.aspx.cs" Inherits="Adminpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 450px">
            <h2 style="color:green; width: 285px; margin-left: 396px; height: 3px;">Welcome Admin</h2>
            <h2 style="color:green; width: 285px; margin-left: 396px; height: 1px;"><b><u>&nbsp; </u></b></h2>
        <div style="width: 298px; margin-left: 322px">
            <asp:Button ID="Button1" runat="server" Text="Appointment Record" Font-Size="Larger" Height="48px" OnClick="Button1_Click" Width="314px" />
        </div>
        <div style="width: 340px; height: 18px; margin-left: 314px; margin-top: 26px">
            <asp:Button ID="Button2" runat="server" Text="Add Doctor" Font-Size="Larger" Height="46px" OnClick="Button2_Click" style="margin-left: 8px" Width="318px" />
            <asp:Button ID="Button3" runat="server" Text="Edit or Delete information" Font-Size="Larger" Height="46px" OnClick="Button3_Click" style="margin-left: 8px; margin-top: 26px;" Width="317px" />
            <asp:Button ID="Button5" runat="server" Text="Show DoctorList" Font-Size="Larger" Height="46px" OnClick="Button5_Click" style="margin-left: 8px; margin-top: 26px;" Width="317px" />
             <asp:Button ID="Button6" runat="server" Text="Search" Font-Size="Larger" Height="46px" OnClick="Button6_Click" style="margin-left: 8px; margin-top: 26px;" Width="317px" />
            <asp:Button ID="Button4" runat="server"  Text="Logout"  Font-Size ="Larger" Height="41px" OnClick="Button4_Click" style="margin-left: 8px; margin-top: 26px" Width="316px" />
          
        </div>
    </div>
  </asp:Content>