<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>JSP Page</title>
    </head>
    
    <%
        
      double hours = Double.parseDouble(request.getParameter("hours"));
      double rate = Double.parseDouble(request.getParameter("rate"));
      double preDeduction = Double.parseDouble(request.getParameter("preDeduction"));
      double postDeduction = Double.parseDouble(request.getParameter("postDeduction"));
        
    %>
    
    <body>
    <div class="leftDiv">
        <h1>Salary Info</h1>
        <hr>
        
         <div class="resultTable">
         <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td></td>
                </tr>
                
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td></td>
                </tr>
                
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td></td>
                </tr>
                
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td></td>
                </tr>
                
                 <tr>
                    <td>Gross Pay:</td>
                    <td></td>
                </tr>
                
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td></td>
                </tr>
                
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td></td>
                </tr>
                
                
                <tr>
                    <td>Tax Amount</td>
                    <td></td>
                </tr>
                
                 <tr>
                    <td>Post-tax Pay:</td>
                    <td></td>
                </tr>
                
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td></td>
                </tr>
                
                
                <tr>
                    <td>Net Pay:</td>
                    <td></td>
                </tr>
            </tbody>
         </table>
         </div>

    </body>
</html>
