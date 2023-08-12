<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Cards</title>

<style>
.card-grid {
  display: grid;
  grid-template-columns: auto auto auto auto;
  background-color: #2196F3;
  padding: 10px;
}
.card-grid-item {
  background-color: rgba(255, 255, 255, 0.8);
  border: 1px solid rgba(0, 0, 0, 0.8);
  padding: 20px;
  font-size: 15px;
  text-align: center;
}
img.mini {
  height: 50%;
  width: 50%;
}

div.error_message {
	color: red;
}
</style>

</head>
<body>
<div align="center">
	<b>SEARCH</b>
	<form action="cards" method="post">
		Title: <input type="text" name="Title"/>
		Guardian <input type="checkbox" name="IsGuardian" value="1"/>
		Seeker <input type="checkbox" name="IsSeeker" value="1"/>
		Mystic <input type="checkbox" name="IsMystic" value="1"/>
		Rouge <input type="checkbox" name="IsRouge" value="1"/>
		Survivor <input type="checkbox" name="IsSurvivor" value="1"/>
		<input type="submit" value="Search"/>
	</form>
</div>

<c:if test="${not empty error_title_msg}">
	<div class="error_message">
		${error_title_msg}
	</div>
</c:if>

<h2>#cards : ${list_size}</h2>
	<div class="card-grid">
            <c:forEach items="${listCards}" var="card">
                <div class="card-grid-item">
                	<c:out value="${card.title}"/>
                	<div><img class="mini" src="images/${card.frontUrl }"/></div>
                	
                	<c:if test="${not empty card.backUrl}">
                	<div><img class="mini" src="images/${card.backUrl }"/></div>
                	</c:if>
                </div>
            </c:forEach>
    </div> 
</body>
</html>