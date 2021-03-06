<%-- 
    Document   : Bootstrap
    Created on : 8 Oct, 2018, 7:35:41 PM
    Author     : limgeokshanmb
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DashboardDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="ProtectUser.jsp" %>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="img/favicon.ico" type="image/ico" />

        <title>NAS | Upload </title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- bootstrap-daterangepicker -->
        <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
        <!-- Dropzone.js -->
        <link href="vendors/dropzone/dist/min/dropzone.min.css" rel="stylesheet">

        <!-- Custom Theme Style -->
        <link href="css/custom.css" rel="stylesheet">

    </head>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <%@include file="navbar.jsp" %>
                <!-- page content -->
                <div class="right_col" role="main">
                    <!-- top tiles -->
                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>Upload</h3>
                            </div>
                        </div>
                        <div class="clearfix"></div>

                        <div class="page-title">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h4>Upload Server Log Files from Local Directory Folder</h4>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <br />
                                            <form action="OptimisedBootstrapController">
                                                <div class="form-group">
                                                    <label class="control-label col-md-2 col-sm-2 col-xs-8" for="directory">Specify directory to read file from <span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input type="text" id="directory" name="directory" required="required" class="form-control col-md-7 col-xs-12" value="C:\Users\NII\Desktop\2018">
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="ln_solid"></div>
                                                <div class="form-group">
                                                    <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-2">

                                                        <button class="btn btn-success" type="submit" onclick="this.disabled=true;this.value='Processing, please wait...';this.form.submit();">Process Logs</button>                                       <br>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>




                        <!--
                                                <div class="page-title">
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                                            <div class="x_panel">
                                                                <div class="x_title">
                                                                    <h4>Upload Zipped Server Log Files</h4>
                                                                    <div class="clearfix"></div>
                                                                </div>
                                                                <div class="x_content">
                                                                    <br />
                        
                                                                    <form class="dropzone" id="dropzone" action="AutomaticBootstrapDesktopController">
                                                                        <div class="fallback">
                                                                            <div class="form-group">
                                                                                <input type="file" name="bin" required="required"><br>
                                                                            </div>
                                                                            <input type="submit" class ="btn btn-primary" value ="Upload new data" />
                                                                            <br>
                                                                        </div>
                                                                    </form>
                                                                    <br>
                                                                    <br>
                                                                    <br>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                        
                                                </div>
                                                
                        -->
                    </div>
                    <div class="clearfix"></div>

                    <!-- /top tiles -->
                    <br />

                </div>
                <!-- /page content -->

                <!-- footer content -->
                <footer>
                    <div class="pull-right">
                        A SMU-X IS480 Project by Team <a href="https://wiki.smu.edu.sg/is480/IS480_Team_wiki%3A_2018T1_Scrabs">Scrabs</a>
                    </div>
                    <div class="clearfix"></div>
                </footer>
                <!-- /footer content -->
            </div>
        </div>
        <!-- jQuery -->
        <script src="vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="vendors/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="vendors/nprogress/nprogress.js"></script>
        <!-- gauge.js -->
        <script src="vendors/gauge.js/dist/gauge.min.js"></script>
        <!-- bootstrap-progressbar -->
        <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
        <!-- iCheck -->
        <script src="vendors/iCheck/icheck.min.js"></script>
        <!-- DateJS -->
        <script src="vendors/DateJS/build/date.js"></script>
        <!-- bootstrap-daterangepicker -->
        <script src="vendors/moment/min/moment.min.js"></script>
        <script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
        <!-- Chart.js -->
        <script src="vendors/Chart.js/dist/Chart.min.js"></script>
        <!-- Custom Theme Scripts -->
        <script src="js/custom-2.js"></script>

        <!-- Dropzone.js -->
        <script src="vendors/dropzone/dist/min/dropzone.min.js"></script>
        <script>
            $(function () {
                Dropzone.options.dropzone = {
                    paramName: "bin", // The name that will be used to transfer the file
                    uploadMultiple: false,
                    init: function () {
                        // Set up any event handlers
                        this.on('success', function () {
                            window.location.href = "DashboardReport.jsp";
                        });
                    }
                };
            });
        </script>
    </body>
</html>
