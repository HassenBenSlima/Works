<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Citerne</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style1.css"/>

<script type="text/javascript">
  function confirmation(code){
	var conf=confirm("Etes vous sure de vouloir supprimer?");
	  if(conf==true){
		 document.location="suppCiterne?code="+code;
	  }
  }

</script>

</head>
<body>	

<div >
${exception}
</div>

<f:form modelAttribute="ctrn"  action="citerneRechercher"  method="post"  >
<td>Recherche par Reference:</td>
<td><f:input path="codeStock"/></td>
<td><f:errors path="codeStock" cssClass="error"></f:errors></td>  
<input type="submit" value="Rechercher"/> 
</f:form>


<table >
<tr>
<th>Reference du citerne </th><th> Capacite Max</th><th>prixUT</th>
<th>quantiteHuile</th><th>qualiteHuile</th>
</tr>
<c:if test="${ not  empty ctrn.citerneByName}"></c:if>
<c:forEach items="${cit}" var="cc" >

<tr>
<td>${cc.codeStock}</td>
<td>${cc.capacite}</td>
<td>${cc.prixUT}</td>
<td>${cc.quantiteHuile}</td>
<td>${cc.qualiteHuile}</td>

<td><a href="javascript:confirmation('${cc.codeStock}')">Supp</a></td>
<td><a href="editCiterne?code=${cc.codeStock}">Edit</a></td>
</tr>
</c:forEach>
<c:if test="${ not empty citern.ctrns}"> 

<c:forEach items="${citern.ctrns}" var="cc" >
<tr>
<td>${cc.codeStock}</td>
<td>${cc.capacite}</td>
<td>${cc.prixUT}</td>
<td>${cc.quantiteHuile}</td>
<td>${cc.qualiteHuile}</td>
<td><a href="javascript:confirmation('${cc.codeStock}')">Supp</a></td>
<td><a href="editCiterne?code=${cc.codeStock}">Edit</a></td>
</tr>
</c:forEach>
</c:if>
</table>

<c:if test="${ not empty citern.ctrns}"> 
 <div>

<c:forEach begin="0" end="${citern.nombrePages}" var="p"> 
<c:choose>
<c:when test="${p==citern.nombrePages}">
<span class ="current">page ${p}</span>
</c:when>
<c:otherwise>
<span class="autrePage">
<a href="ALLCiterne?page=${p}&codeStock=${citern.codeStock}">page ${p}</a>
</span>
</c:otherwise>
</c:choose>
</c:forEach>
</div>

</c:if>

<c:if test="${  not empty ctrn.exception}">
<div>
  ${ctrn.exception}
<script>
    
  alert("Citerne introuvable");
 
 </script>
</div>

</c:if>

</body>
</html>