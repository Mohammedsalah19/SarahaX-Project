<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="login.html.signup" %>

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
    
        <link href="css/rtl3.css" rel="stylesheet">
    </head>
<body>
    <div class="row">
    </div>
  
        </div>
      <div class="row">
          
        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
<h1 class="formtitle"></h1>
	    
    <div class="contentform">
        
    


    	<div class="leftcontact" style="">

            
			      <div class="form-group">
                      
                                      
                <img  src="pic/MB.png" class="img-login" style="max-width:60% ; margin-top:5%">
                      
			        <p>UserName<span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="user" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </span></p>
                      
			        <span class="icon-case"></span>
                      <asp:TextBox name="username" runat="server" ID="user"></asp:TextBox>
                      <%-- <input type="text" data-rule="required"/>--%>
               
       </div> 


			<div class="form-group">
			<p>Birth data </p>	
               
			<table>
                <tr>
                    <td><p>Year</p></td>
                    <td><p>Month</p></td>
                    <td><p>Day</p></td>

                    </tr>
                <tr>
                    <td>
            <%--<span class="icon-case"></span> --%> <asp:DropDownList ID="year" runat="server" style="height:30px;width:90px;" ></asp:DropDownList>
                      </td>
                    <td>
      	<%--	<span class="icon-case"></span> --%>  <asp:DropDownList ID="month" runat="server" style="height:30px;width:70px"   AutoPostBack="True" OnSelectedIndexChanged="month_SelectedIndexChanged"></asp:DropDownList>
                      </td>
                    
                    <td>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
       <asp:DropDownList ID="day" runat="server" style="height:30px;width:70px" ></asp:DropDownList>
            </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="month" EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>

                    </td>
                        </tr>
                </table>

         
              
			</div>	

            
            
            	<div class="form-group">
			<p>Passwrod 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </p>
			<span class="icon-case"></span>
                    <asp:TextBox  name="pass" ID="pass" runat="server" TextMode="Password"></asp:TextBox>
				
              
			</div>
            
            	<div class="form-group">
			<p>Re-Passwrod <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="repass" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
                    </p>
			<span class="icon-case"></span>
                    <asp:TextBox  name="re-pass" ID="repass" runat="server" TextMode="Password"></asp:TextBox>
				
              
			</div>
		
      </div>
		
	</div>
	

      
      </div>
  </div>
        <asp:Button ID="Button1" runat="server" Text="Signup" CssClass="bouton-contact" OnClick="Button1_Click"  />

<%--      <button type="submit" class="bouton-contact"> Go Work</button>--%>

		      <div class="sub-nav" style="" ></div>
        </form>
   
  
</body>
</html>




    </div>
    </form>
</body>
</html>
