<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="login.html.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <html>
    <head>
    
        <link href="css/rtl2.css" rel="stylesheet">
    </head>
<body>
    <div class="row">
    </div>
  
        </div>
      <div class="row">
          
        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
	    <h1 class="formtitle"></h1>
	        
            <div class="contentform">

	<div class="rightcontact">	
        
     
		
  
			<div class="form-group">
                <img src="pic/MBM1.png" pic/MBM1.png" id="img-login" style="max-width:60%">

                <!--
                <div class="divh1" style="back">
                <p class="p1">Login </p> 
                </div>
                -->
			<p>UserName 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </p>
			<span class="icon-case"></span>

                <asp:TextBox ID="name"  name="user" runat="server"></asp:TextBox>
      
			</div>

		  	<div class="form-group">
			<p>Passwrod 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </p>
			<span class="icon-case"></span>
                   <asp:TextBox ID="pass" name="user" runat="server"></asp:TextBox>
			</div>
        
        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="bouton-contact"  OnClick="Button1_Click" />
       
	</div>
	

      </div>
  </div>
          
      <div class="sub-nav" style="" >

      </div>
		   
        </form>
   
  
</body>
</html>




    </div>
    </form>
</body>
</html>
