<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
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

.card-sub-type {
	color: blue;
}
.weakness {
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
	color: red; 
}
</style>

</head>
<body>
<div align="center">
	<form action="cards" method="post">
		Title <input type="text" name="Title" value="${frmSearch.title}"/>
		Cost <input type="text" name="Cost" value="${frmSearch.cost}"/>
		<div>
		<input type="checkbox" name="IsGuardian" value="1"  <c:if test="${frmSearch.isGuardian == 1}">checked</c:if> /> Guardian |
		<input type="checkbox" name="IsSeeker" value="1" <c:if test="${frmSearch.isSeeker == 1}">checked</c:if> /> Seeker |
		<input type="checkbox" name="IsMystic" value="1" <c:if test="${frmSearch.isMystic == 1}">checked</c:if> /> Mystic | 
		<input type="checkbox" name="IsRogue" value="1" <c:if test="${frmSearch.isRogue == 1}">checked</c:if> /> Rouge |
		<input type="checkbox" name="IsSurvivor" value="1" <c:if test="${frmSearch.isSurvivor == 1}">checked</c:if> /> Survivor |
		<input type="checkbox" name="IsNeutral" value="1" <c:if test="${frmSearch.isNeutral == 1}">checked</c:if> /> Neutral |
		<input type="checkbox" name="IsWeakness" value="1" <c:if test="${frmSearch.isWeakness == 1}">checked</c:if> /> Weakness
		</div>
		<div>
		<label for="traitId">Trait</label>
		<select id="traitId" name="traitId">
            <option value="-1">   </option>
            <c:forEach items="${traits}" var="tr">
                <option value="${tr.id}" <c:if test="${frmSearch.traitId == tr.id}">selected</c:if>   >${tr.name}</option>
			</c:forEach>
		</select>
		</div>
		<div><input type="submit" value="Search"/></div>
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
                   <div>
                   	    <div>
                   	    [<c:out value="${card.id}"/>] 
	                	<b><c:out value="${card.title}"/></b>
	                	<c:if test="${card.isGuardian==1}"><img src="icons/guardian.png"/></c:if>
	              		<c:if test="${card.isSeeker==1}"><img src="icons/seeker.png"/></c:if>
	              		<c:if test="${card.isMystic==1}"><img src="icons/mystic.png"/></c:if>
	              		<c:if test="${card.isRogue==1}"><img src="icons/rogue.png"/></c:if>
	              		<c:if test="${card.isSurvivor==1}"><img src="icons/survivor.png"/></c:if>
	              		<c:forEach var="i" begin="1" end="${card.level}">*</c:forEach>	                	
	                	</div>
	                	<div class="card-sub-type">${card.subTypeText}</div>
	                	<div>Cost:<c:out value="${card.cost}"/></div>
	                	<c:if test="${card.isWeakness==1}"><span class="weakness">Weakness</span></c:if>
					</div>
					<div><img class="mini" src="images/${card.frontUrl }"/></div>
                	
                	<c:if test="${not empty card.backUrl}">
                	<div><img class="mini" src="images/${card.backUrl }"/></div>
                	</c:if>
                	
                	<div>Traits: <c:out value="${card.traits}"/></div>
                	
                </div>
            </c:forEach>
    </div> 
</body>
</html>