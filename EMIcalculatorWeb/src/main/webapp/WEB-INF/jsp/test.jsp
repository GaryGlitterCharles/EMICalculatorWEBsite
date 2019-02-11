<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.values{
    position: fixed;
    left: 627px;
    top: 228px;
}
</style>
</head>
<body>

	
	<form:form action="" modelAttribute="fields" method="post" >
	 <div class="values">
            <label for="" style="position: relative;left: 39px;">Loan Anount</label>
            <div>
        		<form:input path="loanAmount"  id="LoanAmount" class="form-control" placeholder="Loan Amount"/><br><br/>
               
            </div>
            <label for="" style="position: relative;left: 33px;">Rate of interest</label>
            <div>
       			 <form:input path="rateOfinterest"  id="Rateofinterest"  class="form-control" placeholder="Rate of interest"/><br><br/>
            
            </div>
            <label for="" style="position: relative;left: 58px;">Tenure</label>
            <div>
        <form:input path="tenure" id="Tenure" class="form-control" placeholder="Tenure"/><br><br/>
                
            </div>
            <label for="" style="position: relative;left: 16px;">Number of Instalments</label>
            <div>
        <form:input path="numberOfInstalment" id="NumberofInstalments" class="form-control" placeholder="Number of Instalments"/><br><br/>
           
            </div>
            <div style="position: fixed;left: 672px;">
                <button  class="btn btn-success" id="button">Calculate EMI</button>
            </div>
           

            
    </div>
	</form:form>
	 
   
	
	
	
</body>
</html>