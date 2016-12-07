<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="login-container">
        <div id="login-box">

            <h2>Login with Username and Password</h2>

            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>

            <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <div class="form-group">
                    <label for="username">User: </label>
                    <input type="text" id="username" name="username" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" />
                </div>

                <input type="submit" value="Submit" class="btn btn-default">

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>

        </div>
    </div>
</div>

<<style>
.form-group{
border-radius: 100px;
    background-color: #f2f2f2;
    padding: 20px;
}

.login-container{
	font-family:Book Antiqua;
	font-color:white;
	font-size
	background-color:#15224f;
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
