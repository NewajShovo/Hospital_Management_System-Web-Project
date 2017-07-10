<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ajax.aspx.cs" Inherits="Ajax" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="main">
            <div>
<h2>&nbsp;Start typing a name in the input field below: </h2>
           
            </div>
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 First name:&nbsp;&nbsp;&nbsp; <input type="text" id="txt1" name="txt1" onkeyup="showHint(this.value)">

		<div>
			<input type="submit" value="Submit Your Query"  runat="server" OnServerClick="submitted" style="width: 409px; margin-left: 306px">&nbsp;&nbsp;&nbsp;&nbsp;
		</div>

		<p>Suggestions: <span id="txtHint"></span></p> 

		 <div style="width: 594px; margin-left: 220px">
		<asp:PlaceHolder ID="Placeholder1" runat="server" Visible="True">

		</asp:PlaceHolder>
             </div>
    <h2> <span class="glyphicon glyphicon-exclamation-sign"></span>For Searching  Doctors Information Enter The Full Name</h2>
           <h2> <span class="glyphicon glyphicon-exclamation-sign"></span>For Searching  Patient Information Enter The FirstName</h2>
		
	

<script>
	function showHint(str) {
		var xhttp;
		if (str.length == 0) {
			document.getElementById("txtHint").innerHTML = "";
			return;
		}
		xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function () {
			if (this.readyState == 4 && this.status == 200) {
				document.getElementById("txtHint").innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "gethint.asp?q=" + str, true);
		xhttp.send();
	}
</script>


</div>
     </asp:Content>





