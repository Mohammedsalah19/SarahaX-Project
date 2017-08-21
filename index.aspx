<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Saraha.index" %>

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
<body style="background-image: url(tile.jpg)">
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
                            <li><a href="Profile.aspx">Profile</a></li>
                            <li class="active"><a href="index.aspx">Room </a></li>
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
                            <center>

                      <input type ="button" class="btn-danger btn-lg mbtn" style="margin:5px;" value="Message" />
                         <br />
                                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                     
                                </center>
                        </div>


                    </div>

                </div>


                <div class="row">

                    <div class="col-xs-6 col-xs-offset-4">



                        <div class="divmessage" style="margin-top: 90px; display: none; width: 100px; height: 60px;">

                          
                            <textarea id="TextArea2" class="txtar"  style="width: 420px; height: 60px; resize: none" runat="server"></textarea>

                            <asp:Button ID="Button1" class="btn-danger btn-lg sbtn" Style="margin-left: 180%; margin-top: 10px" runat="server" Text="Send" OnClick="Button1_Click" CausesValidation="False" />
                       

                        </div>
                    </div>

                </div>


            </div>

        </div>
    </form>
</body>
</html>
