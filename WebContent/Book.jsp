<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Books</title>
        <script type=text/javascript>
            function validate(){
                var remember = document.getElementById('remember');
                 if (remember.books.checked == true){
                      
                       return true;
                     }else{
                        alert("Choose a Book before adding to cart!");
                        return false;
                }
            }
</script>
    </head>
    <body>
        
              <h2> Shop for Books</h2>
            
        
       
        <hr>
        <p align="right">[<a href ="ViewCart.jsp"> View Cart</a>]</p>
     <form method = 'post' action = 'addToCart' name="remember"  >
         <input type="hidden" name="items" value="books">
                    <input type='checkbox' name = 'books' value='Java Servlet Programming [29.95]'/>Java Servlet Programming [$29.95] <br/><br/>
                    <input type='checkbox' name = 'books' value='Oracle Database Programming [48.95]'/>Oracle Database Programming [$48.95]<br/><br/>
                    <input type='checkbox' name = 'books' value='System Analysis and Design with UML [14.95]'/>System Analysis and Design with UML [$14.95]<br/><br/>
                    <input type='checkbox' name = 'books' value='Object Oriented Software Engineering [35.99]'/>Object Oriented Software Engineering [$35.99]<br/><br/>
                    <input type='checkbox' name = 'books' value='Java Web Services [27.99]'/>Java Web Services [$27.99]<br/><br/><br/>
                 
                    <input type='submit'value='AddToCart' onclick="return validate();"/>
    </form> 
        </body>
</html>