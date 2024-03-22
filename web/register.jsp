<%-- 
    Document   : register
    Created on : Nov 21, 2023, 6:50:00 AM
    Author     : THevY
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width ,initial-scale=1, shrink-to-fit=no">
        <title>Register</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <style>
            .red{
                
                color: red;
            }
            
        </style>
    </head>
    <body>
       
        <%
        String error = (request.getAttribute("error")+"").equals("null")?"":(request.getAttribute("error")+"");
        
            String username = request.getAttribute("username")+"";
            username = (username.equals("null"))?"":username;
            String name = request.getAttribute("name")+"";
            name = (name.equals("null"))?"":name;
            String gender = request.getAttribute("gender")+"";
            gender = (gender.equals("null"))?"":gender;
            String dob = request.getAttribute("dob")+"";
            dob = (dob.equals("null"))?"":dob;
            String addressUser = request.getAttribute("addressuser")+"";
            addressUser = (addressUser.equals("null"))?"":addressUser;
            String addressBuy = request.getAttribute("addressbuy")+"";
            addressBuy = (addressBuy.equals("null"))?"":addressBuy;
            String addressReceive = request.getAttribute("addressreceive")+"";
            addressReceive = (addressReceive.equals("null"))?"":addressReceive;
            String telNum = request.getAttribute("telnum")+"";
            telNum = (telNum.equals("null"))?"":telNum;
            String email = request.getAttribute("email")+"";
            email = (email.equals("null"))?"":email;
            
        %>
        
        <div class="container">
            <div class="text-center"><h1>Add Employee</h1></div>
            
            <form action="./register" method="">
                <div class="row">
                        <div class="col-md-6"> 
                    <h3>Username and Password</h3>
                    <!--Username-->
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label><span class="red"> *</span>
                        <input type="text" class="form-control" id="username" name="username" required="" value="<%=username%>" >
                    </div>
                        <div class="red" id="error">
                            <%=error%>
                        </div>
                        <!--Password-->
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label><span class="red"> *</span>
                        <input type="password" class="form-control" id="password" name="password" required=""  onkeyup="checkPassword()">
                    </div>
                    <div class="mb-3">
                        <label for="repassword" class="form-label">Re-Enter Password</label><span class="red"> *</span> <span id="msg" class="red"> </span>
                        <input type="password" class="form-control" id="repassword" name="repassword" required="" onkeyup="checkPassword()">
                    </div>

                    <h3>User Information</h3>
                    <!--Name-->
                    <div class="mb-3">
                        <label for="name" class="form-label">Full name</label>
                        <input type="text" class="form-control" id="name" name="name" value="<%=name%>">
                    </div>
                    
                   
                    <div class="mb-3">
                        <label for="telnum" class="form-label">Phone Number</label>
                        <input type="tel" class="form-control" id="telnum" name="telnum" value="<%=telNum%>">
                    </div>
                    
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="telnum" name="email" value="<%=email%>">
                    </div>
                    

                    <hr/>
                    
                    
                    <input class="btn btn-primary form-control" type="submit" value="Register" name="submit" id="submit" >
                </div>
                </div>
            </form> 
        </div>
                    <!-- Footer -->
	
                    
<!-- End footer -->
                      
    </body>
    <script>
        function checkPassword(){
		password = document.getElementById("password").value;
		rePassword = document.getElementById("repassword").value;
		if(password!=rePassword){
			document.getElementById("msg").innerHTML = "Incorrect Password";
			return false;}
		 else {
			document.getElementById("msg").innerHTML = "";
			return true;
		}
	}
        
        function handleCheckAgree(){
            
                agreeTerm = document.getElementById("agree-terms");
                if(agreeTerm.checked == true){
                document.getElementById("submit").style.visibility= "visible";
                } else {
                document.getElementById("submit").style.visibility= "hidden";
                    
                }
                
        }
        
    </script>
</html>
