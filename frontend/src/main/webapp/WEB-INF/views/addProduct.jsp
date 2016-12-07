<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>

            <p class="lead">Fill the below information to add a product:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post"
                   commandName="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Name</label> <form:errors path="productName" cssStyle="color: #ff0000;" />
            <form:input path="productName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="casual" />Casual Wear</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Footwear" />Footwear</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Accessories" />Accessories</label>
        </div>

        <div class="form-group">
            <label for="description">Product Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="price">Product Price</label>  <form:errors path="productPrice" cssStyle="color: #ff0000;" />
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="new" />New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="used" />Used</label>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="active" />Active</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="inactive" />Inactive</label>
        </div>

        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label>  <form:errors path="unitInStock"
                                                                         cssStyle="color: #ff0000;" />
            <form:input path="unitInStock" id="unitInStock" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
        </form:form>

<style>
.form-group{
border-radius: 100px;
    background-color: #f2f2f2;
    padding: 20px;
    width:auto;
}
input[type=submit]{
width:100%;
background-color:#4CAF50;
color:white;
padding:14px 20px;
margin:8px 0;
border:none;
border-radius:4px;
cursor:pointer;

}
input[type=submit]:hover {
    background-color: #45a049;
}
</style>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
