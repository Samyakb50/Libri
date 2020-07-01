<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-container">

  <center><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-green w3-large">Search Books</button>
</center>
  <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:700px">
  
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
      	<h2>Libri Store</h2>
      </div>
<center>
      <form class="w3-container" action="searchResult.jsp">
        <div class="w3-section">
          <label><b>Search by</b></label>
          <br/>
          <select id="browsers" name="select">
								<option value="name">Name</option>
									<option value="subject">Subject</option>
    
								<option value="pricelt">Price less than</option>
    <option value="pricegt">Price greater than</option>
     <option value="used">Used</option>
      <option value="unused">Unsed</option>
							</select>
                            <br/>
                            <br/>
                     
          <input class="w3-input w3-border" type="text" placeholder="Search" name="search" required>
           <%String sel="";
           String ser="";
           if(request.getParameter("select")!=null)
        	  {
        	  sel=request.getParameter("select");
        	  ser=request.getParameter("search");
        	  }
        	  %>
         <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Search</button>
          
        </div>
      </form>

      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
      </div>
</center>
    </div>
  </div>
</div>
            
</body>
</html>
