<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>Salary Info</title>
    </head>
    
    <%
        
        
      double hours = Double.parseDouble(request.getParameter("hours"));
      double rate = Double.parseDouble(request.getParameter("rate"));
      double preDeduction = Double.parseDouble(request.getParameter("preDeduction"));
      double postDeduction = Double.parseDouble(request.getParameter("postDeduction"));
      double hoursOvertime;
      double overtimeRate;
      double grossPay;
      double preTaxPay;
      double taxRate;
      double taxAmount;
      double postTaxPay;
      double netPay;
      
      if(hours>40)
      {
          hoursOvertime = hours - 40;
          overtimeRate = 1.5 * rate; 
          grossPay = (40*rate) + (overtimeRate * hoursOvertime);
          preTaxPay = grossPay - preDeduction;
          if(grossPay < 500)
          {
                taxRate = .18;
                taxAmount = preTaxPay * taxRate;
          }
          else
          {
                taxRate = .22;
                taxAmount = preTaxPay * taxRate;
          }
          postTaxPay = preTaxPay - taxAmount;
          netPay = postTaxPay - postDeduction;
      }
      else
      {
          hoursOvertime = 0;
          overtimeRate = 0; 
          grossPay = (hours*rate);
          preTaxPay = grossPay - preDeduction;
          if(grossPay < 500)
          {
                taxRate = .18;
                taxAmount = preTaxPay * taxRate;
          }
          else
          {
                taxRate = .22;
                taxAmount = preTaxPay * taxRate;
          }
          postTaxPay = preTaxPay-taxAmount;
          netPay = postTaxPay - postDeduction;
      }
      

      DecimalFormat formatter = new DecimalFormat("$#0.00");
    %>
    
    <body>
    <div class="leftDiv">
        <h1>Salary Info</h1>
        <hr>
        <div>
         <table class="resultTable">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hours %></td>
                </tr>
                
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= formatter.format(rate) %></td>
                </tr>
                
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%= hoursOvertime %></td>
                </tr>
                
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= formatter.format(overtimeRate) %></td>
                </tr>
                
                 <tr>
                    <td>Gross Pay:</td>
                    <td><%= formatter.format(grossPay) %> </td>
                </tr>
                
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= formatter.format(preDeduction) %></td>
                </tr>
                
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= formatter.format(preTaxPay) %> </td>
                </tr>
                
                
                <tr>
                    <td>Tax Amount</td>
                    <td><%= formatter.format(taxAmount) %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= formatter.format(postTaxPay) %></td>
                </tr>
                
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= formatter.format(postDeduction) %></td>
                </tr>
                
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= formatter.format(netPay) %></td>
                </tr>
            </tbody>
         </table>
        </div>
    </div>
    </body>
</html>
