
<%@ page language="java" contentType="text/html" %>
<%@ include file="Header.jsp" %>


<br>
<br>
<br>
<h2 align="center">Landing Page</h2>
<center>
<!--  
<a href="Category">Category</a>
<a href="Product">Product</a>
<a href="Supplier">Supplier</a>
-->
<br>
<br>
<div class="container">
 <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="resources/images/iPhone-7-Red.jpg" alt="Iphone 7">
    </div>

    <div class="item">
      <img src="resources/images/oneplus2.jpg" alt="One Plus 2">
    </div>

    <div class="item">
      <img src="resources/images/xiaomi-redmi-note_4.jpg" alt="Redmi Note 4">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
 </div>
</div>
</br>
</center>
</body>
</html>
<%@ include file="Footer.jsp" %>