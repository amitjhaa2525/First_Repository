<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NIIT_Technologies</title>
<script>
function function3(){
	alert("======");
	if(document.getElementById('termsac').checked == true){
		alert("==========14========");
		document.getElementById('submit').disabled = false;
}


function myFunction2(){

	var ajaxRequest;  // The variable that makes Ajax possible!
    
    try {        
       // Opera 8.0+, Firefox, Safari
       ajaxRequest = new XMLHttpRequest();
    } catch (e) {
       
       // Internet Explorer Browsers
       try {
          ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
       } catch (e) {
          
          try {
             ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
          } catch (e) {
             // Something went wrong
             alert("Your browser broke!");
             return false;
          }
       }
    }
	/* alert("===========commit checking==========="+ajaxRequest); */
    ajaxRequest.onreadystatechange = getInfo;
    var accno = document.getElementById('accno').value;
	ajaxRequest.open("GET","checkajax.jsp?feeid="+accno,true);
	ajaxRequest.send();	
    	
    	function getInfo(){
        if(ajaxRequest.readyState == 4 && ajaxRequest.status == 200) {
           var ajaxDisplay = ajaxRequest.responseText;
           /* alert("=============53=========") */
           document.getElementById('amit').innerHTML=ajaxDisplay;  
      }
     }
    
	
}
function myFunction(){
	
	var mobno = document.getElementById("mobno").value;
	
	if (/[a-zA-Z]/.test(mobno)) {
		  alert('Letter Found');
		  return false;
		}
	
	
	if (!(/^\d{10}$/.test(mobno))) {
	    alert("Invalid number; must be ten digits")
	    number.focus();
	    return false;

	}
	
}

</script></head>
<body onload="function3()">
<h3>Today's date: <%= (new java.util.Date()).toLocaleString()%></h3>
<form name="form1" action="controller" method="post">
<span id="amit"> </span>  
<table align = "center" border="2" cellpadding="5">
<tr>
<td><strong>Account Number :</strong>
<td><input type="text" name="accno" id="accno" onblur="return myFunction2();"></td>
</tr>
<tr>
<td><strong>Name :</strong>
<td><input type="text" name="name" id="name"></td>
</tr>
<tr>
<td><strong>Mobile Number :</strong>
<td><input type="text" name="mobno" id="mobno" onblur="return myFunction();"/></td>
</tr>
<tr>
<td><strong>Email :</strong>
<td><input type="text" name="email" id="email"></td>
</tr>
</table>
<input type="checkbox" name="termsac" id="termsac" onclick="function3()"/>Terms&Conditions<br>
1.I am a resident of india<br>
2.I understand that the information contained in the form(s) will be transferred to the bank over the internet.<br>

<input type="submit" name="submit" id="submit" value="Submit"/>
<input type="reset" name="reset" id="reset" value="Reset"/>
</form>
</body>
</html>