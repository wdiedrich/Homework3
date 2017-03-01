<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>Salary Calculator</title>
    </head>
    <body>
        
        <div class ="leftDiv">
        <h1>Simple Salary Calculator</h1>
        <hr></hr>
         <form name="calcForm" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hours" value="" size="20"></td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="rate" value="" size="20"></td>
                    </tr>
                    
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="preDeduction" value="" size="20"></td>
                    </tr>
                    
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="postDeduction" value="" size="20"></td>
                    </tr>
                </tbody>
            </table>
            <br><br>
            
            <div class="buttons">
            <input type="reset" value="Clear" id="clear" >
            <input type="submit" value="Submit" id="submit" >
            </div>
         </form>
          
        </div>
    </body>
</html>
