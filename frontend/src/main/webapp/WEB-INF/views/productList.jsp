<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<script>
    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]],
            "oSearch": {"sSearch": searchCondition}
        });
    });

</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Products Details</h1>

        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Product Image</th>
                <th>Product Name</th>
                <th>Product Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th>Stock</th>
                <th></th>
                
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                             style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice}</td>
                    <td>${product.unitInStock}</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                    ><span class="glyphicon glyphicon-new-window btn btn-primary"></span> View</a></td>
                </tr>
            </c:forEach>
        </table>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
