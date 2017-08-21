<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Saraha.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="css/JavaS.js"></script>

</head>
<body style="background-image: url(tie.jpg)">
    <form id="form1" runat="server">
        <div>

            <nav class="navbar navbar-inverse navbar-fixed-top">

                <div class="container-fluid">
                    <!-- for mobile -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <a class="navbar-brand" href="#">Saraha</a>
                    </div>

                    <!-- navbar contents -->
                    <div class="collapse navbar-collapse" id="myNavbar">

                        <ul class="nav navbar-nav" style="margin-left:0%">
                            <li class="active"><a href="Profile.aspx">Profile</a></li>
                            <li ><a href="index.aspx">Room </a></li>
                               <li><a href="login.aspx">Login </a></li>
                                <li><a href="signup.aspx">signup </a></li>
                       <li style="margin-left:0%"><a href="#"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
                                
                        </ul>
                            </div>

                    <%--                <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
                        </ul>--%>
            </nav>




            <div class="cotanier" style="margin-top: 85px;">

                <div class="row">

                    <div class="col-xs-12">


                        <div class="p" style="width: 100%; height: 150px">

                            <img class="img-responsive center-block" src="img.jpg" style="border-radius: 10px; max-height: 150px; margin: auto">
                            
                        </div>


                    </div>

                </div>


                <div class="row" >

                    <div class="col-xs-6 col-xs-offset-1" style="margin-top:100px ; border-color:#808080 ; border:3px"  >




                        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <ItemTemplate>
                                message:
                                <asp:Label  ID="messageLabel" runat="server" Text='<%# Eval("message") %>' />
                                <br />
                                data:
                                <asp:Label ID="dataLabel" runat="server" Text='<%# Eval("data") %>' />
                                <br />
                                <br />
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SarahaConnectionString3 %>"> </asp:SqlDataSource>


                        </div>
                    
                    <div class="col-xs-6">

                        <div class="product"style="background-color:yellow ;width:100%;height:100%">
                        </div>
                    </div>

                </div>


            </div>

        </div>
    </form>
</body>
</html>
