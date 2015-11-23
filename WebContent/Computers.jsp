<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computers</title>
         <script type=text/javascript>
            function validate(){
                var remember = document.getElementById('remember');
                 if (remember.computers.checked == true){
                      
                       return true;
                     }else{
                        alert("Choose a Laptop before adding to cart!");
                        return false;
                }
            }
</script>
    </head>
    <body>
         
              <h2> Shop for Laptops</h2>
        <hr>
       
       <p align="right">[<a href ="ViewCart.jsp"> View Cart</a>]</p>
       <form method = 'post' action = 'addToCart' name="remember" >
            <input type="hidden" name="items" value="computers">
                    <input type='checkbox' name = 'computers' value='Apple Mac Book Pro with 13.3" Display [1299.99]'/>Apple Mac Book Pro with 13.3" Display [$1299.99] <br/><br/>
                    <input type='checkbox' name = 'computers' value='Asus Laptop with Centrino 2 Black  [949.95]'/>Asus Laptop with Centrino 2 Black  [$949.95]<br/><br/>
                    <input type='checkbox' name = 'computers' value='HP Pavilion Laptop with Centrino 2 DV7 [1199.95]'/>HP Pavilion Laptop with Centrino 2 DV7 [$1199.95]<br/><br/>
                    <input type='checkbox' name = 'computers' value='Toshiba Satellite Laptop with Centrino 2 [899.99]'/> Toshiba Satellite Laptop with Centrino 2 [$899.99]<br/><br/>
                     <input type='checkbox' name = 'computers' value='Sony VAIO Laptop with Core 2 Duo Cosmopolitan Pink [779.99]'/>Sony VAIO Laptop with Core 2 Duo Cosmopolitan Pink [$779.99]<br/><br/><br/>
                    <input type='submit'value='AddToCart'  onclick="return validate();"/>
</form>
    </body>
</html>