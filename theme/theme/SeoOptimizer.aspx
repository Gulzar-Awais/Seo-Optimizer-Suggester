<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeoOptimizer.aspx.cs" Inherits="theme.SeoOptimizer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
   <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    <!-- Page Title -->
    <title>Listing &amp; Directory Website Template</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="~/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="~/https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">
    <!-- Simple line Icon -->
    <link rel="stylesheet" href="~/css/simple-line-icons.css">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="~/css/themify-icons.css">
    <!-- Hover Effects -->
    <link rel="stylesheet" href="~/css/set1.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="~/css/style.css">
</head>

<body>
    <!--============================= HEADER =============================-->
   
    
    <!-- SLIDER -->
    <section class="slider d-flex align-items-center">
        <!-- <img src="images/slider.jpg" class="img-fluid" alt="#"> -->
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-12">
                    <div class="slider-title_box">
                        <div class="row">
                            <div class="col-md-12">
                               
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-10">
                               

                               <div background-color="white" class="slider-content_wrap ">
                                  
                                   
    <form id="form1" runat="server">
    <div align="center">
                           <h1>Seo Optimizer and suggester</h1>

               <table>
                <tr>
                    <td>Enter URL: </td>          
                          <td><asp:TextBox ID="txtUrl" runat="server" Width="250px" placeholder="Enter your URL"></asp:TextBox>
                        <asp:Button ID="btnFetchMetaTags" runat="server"  Text="Get the Results" OnClick="btnFetchMetaTags_Click" /><br />
                              <asp:RequiredFieldValidator ID="rfvWebUrl" runat="server" ControlToValidate="txtUrl" ErrorMessage="URL can not be left blank" SetFocusOnError="true"></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="rgeWebUrl" runat="server" ErrorMessage="Enter the URL in the valid format e.g. http://www.webcodeexpert.com/" ControlToValidate="txtUrl" ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td> Title: </td>
                    <td><asp:TextBox ID="txtTitle" runat="server" Height="41px" TextMode="MultiLine" Width="380px" placeholder="Title....."></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Description: </td>
                    <td><asp:TextBox ID="txtDesc" runat="server" Height="95px" TextMode="MultiLine" Width="380px" placeholder="Description...."></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Keywords: </td>
                    <td><asp:TextBox ID="txtKeywords" runat="server" Height="95px" TextMode="MultiLine" Width="380px" placeholder="keywords...."></asp:TextBox></td>
                </tr>
            </table>
    </div>
    </form>



                               </div> 


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </section>
    <!--// SLIDER -->
    <!--//END HEADER -->

    <!--//END ADD LISTING -->
    <!--============================= FOOTER =============================-->
    <footer class="main-block dark-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright &copy; 2018 . All rights reserved |  <i class="ti-heart" aria-hidden="true"></i> by <a href="http://localhost:2685/" target="_blank">Seo Optimizer</a></p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <ul>
                            <li><a href="~/#"><span class="ti-facebook"></span></a></li>
                            <li><a href="~/#"><span class="ti-twitter-alt"></span></a></li>
                            <li><a href="~/#"><span class="ti-instagram"></span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--//END FOOTER -->
    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="~/js/jquery-3.2.1.min.js"></script>
    <script src="~/js/popper.min.js"></script>
    <script src="~/js/bootstrap.min.js"></script>

    <script>
        $(window).scroll(function() {
            // 100 = The point you would like to fade the nav in.

            if ($(window).scrollTop() > 100) {

                $('.fixed').addClass('is-sticky');

            } else {

                $('.fixed').removeClass('is-sticky');

            };
        });
    </script>
</body>
</html>
