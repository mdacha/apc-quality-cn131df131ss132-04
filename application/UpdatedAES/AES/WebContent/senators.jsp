<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Presidential Candidates</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="bootstrap/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="bootstrap/dashboard.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index5.jsp">Central Canvassing System</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
          	<li><a href="#">President</a></li>
          	<li><a href="#">Vice President</a></li>
          	<li><a href="#">Senators</a></li>
          	<li><a href="#">Party Lists</a></li>
          	<li><a href="#">Governors</a></li>
          	<li><a href="#">Vice Governors</a></li>
            <li><a href="#">Mayors</a></li>
            <li><a href="#">Vice Mayors</a></li>
            <li><a href="login.jsp">Login</a></li>
          </ul>
          <form class="navbar-form navbar-right pull-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
         	<li><a href="index5.jsp">Overview</a></li>
            <li><a href="index5.jsp">Reports</a></li>
            <li><a href="index5.jsp">Analytics</a></li>
            <li><a href="index5.jsp">Export</a></li>
          </ul>
          ___________________________
          <ul class="nav nav-sidebar">
          </ul>
          
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Region <span class="sr-only">(current)</span></a></li>
            <li><a href="">CAR</a></li>
            <li><a href="">XVI</a></li>
            <li><a href="">Province</a></li>
            <li><a href="">District</a></li>
            <li><a href="">Municipality</a></li>
            <li><a href="">Barangay</a></li>
            <li><a href="">Precinct</a></li>
          </ul>
          
          
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Top Candidates</h1>

          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Presidential</h4>
              <span class="text-muted">Votes</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Vice Presidential</h4>
              <span class="text-muted">Votes</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Senatorial</h4>
              <span class="text-muted">Votes</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Party List</h4>
              <span class="text-muted">Votes</span>
            </div>
          </div>

          <h2 class="sub-header">Senators</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
	                <th>Candidacy</th>
	                <th>Candidate</th>
	                <th>Votes</th>
              	</tr>
              </thead>
              <tbody>
              <%
				Class.forName("org.sqlite.JDBC");
				Connection conn = DriverManager.getConnection("jdbc:sqlite:D:/Eclipse/db/aes.db");
				Statement stat = conn.createStatement();
				
				ResultSet regionNCRduterte = stat.executeQuery("SELECT DISTINCT candidacy,name,vote FROM tapat where region='XVIII' and candidacy='Senator';");
				while (regionNCRduterte.next()) {	    
				    %>
				    	<tr>
				    		<td><%= regionNCRduterte.getString("candidacy") %></td>
				    		<td><%= regionNCRduterte.getString("name") %></td>
				    		<td><%= regionNCRduterte.getString("vote") %></td>
				    	</tr>
				    <%
				}
				regionNCRduterte.close();	%>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="jquery/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="bootstrap/jquery.min.js"><\/script>')</script>
    <script src="bootstrap/bootstrap.min.js"></script>

    <script src="bootstrap/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
