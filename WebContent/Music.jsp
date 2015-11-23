<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Music</title>
         <script type=text/javascript>
            function validate(){
                var remember = document.getElementById('remember');
                 if (remember.music.checked == true){
                      
                       return true;
                     }else{
                        alert("Choose a Music CD before adding to cart!");
                        return false;
                }
            }
        </script>
    </head>
    <body>

               <h2> Shop for CDs</h2>
               
          
        <hr>
        <p align="right">[<a href ="ViewCart.jsp"> View Cart</a>]</p>
       
        <form method = 'post' action = 'addToCart' name="remember" onsubmit="return validate()" >
            <input type="hidden" name="items" value="music">
                    <input type='checkbox' name = 'music' value='Summer by Calvin Harris [16.99]'/>Summer by Calvin Harris [$16.99] <br/><br/>
                    <input type='checkbox' name = 'music' value='Blame by Calvin Harris [10.95]'/>Blame by Calvin Harris [$10.95]<br/><br/>
                    <input type='checkbox' name = 'music' value='Sugar by Marron5 [9.97]'/>Sugar by Marron5 [$9.97]<br/><br/>
                    <input type='checkbox' name = 'music' value='Another Brick In The Wall by Pink Floyd [13.98]'/>Another Brick In The Wall by Pink Floyd [$13.98]<br/><br/>
                     <input type='checkbox' name = 'music' value='Paradise by Cold Play [27.99]'/>Paradise by Cold Play [$27.99]<br/><br/><br/>
                    <input type='submit' value='AddToCart'/>
        </form> 
            </body>
</html>