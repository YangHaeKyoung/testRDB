<%@ include file="/WEB-INF/taglib/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title><sitemesh:write property="title"/></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="/resources/css/bootstrap/3.3.7/bootstrap.min.css">
  <script src="/resources/js/jquery/3.1.1/jquery.min.js"></script>
  <script src="/resources/js/bootstrap/3.3.7/bootstrap.min.js"></script>
  
  <sitemesh:write property='head'/>
  
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  </style>
</head>

<body>

<div class="container-fluid">
  <div class="row content">
  
  	<%-- start the left --%>
    <div class="col-sm-3 sidenav">
    
      <%-- blog name --%>
      <h4>Simple Sample</h4>
      
      <%-- bbs list --%>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">Home</a></li>
        <li><a href="#section2">News</a></li>
        <li><a href="#section3">Sample</a></li>
        <li><a href="#section3">Contact</a></li>
      </ul><br>
      
      <%-- search area --%>
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search..">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div>
      
    </div>
    <%--// end of the left --%>
    
    <%-- Contents --%>
    <div class="col-sm-9">
    	<sitemesh:write property='body'/>
    </div>
  </div>
</div>

<footer class="container-fluid">
  <p>Footer Text</p>
</footer>

</body>
</html>
