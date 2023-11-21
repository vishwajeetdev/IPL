<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
        <%@ taglib prefix="special" uri="http://www.springframework.org/tags/form" %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>editplayer.jsp</title>
</head>
<h1>Welcome to player edit page</h1>
<body>

<special:form action="playerupdate" modelAttribute="player">

Id:- <special:input path="id" hidden="true"/> <br><br>

Name: <special:input path="name"/><br><br>

Username: <special:input path="username"/><br><br>

Password: <special:input path="password"/><br><br>


Role:
<special:select path="role">
<special:option value=" ">Select</special:option> 
<special:option value="Batsman">Batsman</special:option>
<special:option value="Bowler">Bowler</special:option>
<special:option value="Allrounder">Allrounder</special:option>
<special:option value="WicketKeeper">WicketKeeper</special:option>
</special:select>
<br>
<br>






Country: 
<special:select path="country" hidden="true">
<special:option value=" ">Select</special:option>
<special:option value="Bharat">Bharat</special:option>
<special:option value="Afghanistan">Afghanistan</special:option>
<special:option value="Australia">Australia</special:option>
<special:option value="Bangladesh">Bangladesh</special:option>
<special:option value="England">England</special:option>
<special:option value="Ireland">Ireland</special:option>
<special:option value="Namibia – Associate Nation">Namibia  Associate Nation</special:option>
<special:option value="Netherlands – Associate Nation">Netherlands Associate Nation</special:option>
<special:option value="New Zealand">New Zealand</special:option>
<special:option value="South Africa">South Africa</special:option>
<special:option value="Sri Lanka">Sri Lanka</special:option>
<special:option value="UAE - Associate Nation">UAE Associate Nation</special:option>
<special:option value="West Indies">West Indies</special:option>
<special:option value="Zimbabwe">Zimbabwe</special:option>
</special:select>
<br>
<br>

Status: <special:input path="status" hidden="true" /><br><br>



Base Price: 
<special:select path="price">
<special:option value=" ">Select</special:option>
<special:option value="200">2 cr</special:option>
<special:option value="150">1.5 cr</special:option>
<special:option value="100">1 cr</special:option>
<special:option value="75">75 lakh</special:option>
<special:option value="50">50 lakh</special:option>
<special:option value="40">40 lakh</special:option>
<special:option value="30">30 lakh</special:option>
<special:option value="20">20 lakh</special:option>
<special:option value="10">10 lakh</special:option>
</special:select>




<br>
<br>

<special:button type="submit">Submit</special:button>        <special:button type="reset">Cancel</special:button>





</special:form>



</body>
</html>  