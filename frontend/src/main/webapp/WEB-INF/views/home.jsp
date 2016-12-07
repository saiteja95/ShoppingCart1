<%@include file="/WEB-INF/views/template/header.jsp" %>
<br>
<br>
<br>
<br>

<br>

<!-- Carousel
================================================= -->

 <div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
      
        <img src="<c:url value="/resources/images/image4.jpg" />" alt="Fashion" width="300" height="150">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/image9.jpg" />"alt="Footwear" width="300" height="150">
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/images/image14.jpg" />" alt="Accesories" width="300" height="150">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div><hr>


<div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
          <img class="img-rounded" src="<c:url value="/resources/images/image10.jpg" />" alt="Generic placeholder image" width="140" height="140">
          <h2>CasualShirts</h2>
          <p><a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=$" />" role="button">View details &raquo;</a></p>&nbsp&nbsp
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-rounded" src="<c:url value="/resources/images/foot.jpg" />" alt="Generic placeholder image" width="140" height="140">
          <h2>Footwear</h2>
          <p><a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=$" />" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
        <img class="img-rounded" src="<c:url value="/resources/images/image12.jpg" />" alt="Generic placeholder image" width="140" height="140">
          <h2>Accessories</h2>
          <p><a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=$" />" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


</div>
 

    <%@include file="/WEB-INF/views/template/footer.jsp" %>

  