<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<head>


<title>Fournisseur du moulin</title>
<!--Style Template-->
<link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet" type="text/css" />
   <!-- Custom CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"/>
<!--Fin Style-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap-iso.css"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap-tabdrop.js"></script>

<!-- Menu -->
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery-1.12.0.min.js"></script>
 <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap-datepicker.js"></script>


<script type="text/javascript">
  function confirmation(cin){
	var conf=confirm("Etes vous sure de vouloir supprimer?");
	  if(conf==true){
		 document.location="suppFrnsO?CINFO="+cin;
	  }
  }

</script>
<script type="text/javascript">

function limitText(x,limitNum){
if(x.value.length>limitNum){

x.value=x.value.substring(0,limitNum);
}
}

</script>

</head>
	
	<body>
<!-- START PAGE SOURCE -->
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
       <h1> <a href="<c:url value="/moulin/Caisse/indexcaisse"/>"><small>Societ�</small>
          Moulin d'olive.</a></h1><br/><br />
      </div>

        <div class="logo_text"><a href="<c:url value="/moulin/FactureImp/indexfac"/>">Commande</a> | <a href="<c:url value="/j_spring_security_logout" />" >Deconnection</a></div>

      <div class="clr"></div>
    </div>
	
		  <div>
	  
 <!--Menu-->
<div class="container">
  <ul class="nav nav-tabs">
    <li class=""><a href="<c:url value="/moulin/Caisse/indexcaisse"/>">Accueil</a></li>
    <li class="dropdown">
     <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Reservations <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="<c:url value="/moulin/moulinOlive/indexr"/>">Ajouter une reservation</a></li>
        <li><a href="<c:url value="/moulin/moulinOlive/ALLR"/>">Consulter les reservations</a></li>                        
     
      </ul>
    </li>
    <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Commande<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="<c:url value="/moulin/FactureImp/indexfac"/>">Ajouter une commande</a></li>
        <li><a href=" <c:url value="/moulin/FactureImp/indexfactClient"/>">Factures du client</a></li>                        
      </ul>
    </li>
	<li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Achat d'olive <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="<c:url value="/moulin/moulinBonAchat/indexba"/>">Ajouter un achat</a></li>
        <li><a href="<c:url value="/moulin/moulinBonAchat/indexfrnsbonachat"/>">Bons d'achats du fournisseur</a></li>  
        <li><a href="<c:url value="/moulin/moulinFrns/ALLFOL"/>">Consulter les fournisseurs</a></li>  		
      </ul>
      
    </li>
	<li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Maintenance <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="<c:url value="/moulin/moulinOlive/indexmta"/>">Ajouter une maintenance</a></li>
        <li><a href="<c:url value="/moulin/moulinOlive/ALLMain"/>">Consulter les maintenances</a></li>                        
      <li><a href="<c:url value="/moulin/moulinFrns/ALLFO"/>">Consulter les fournisseurs</a></li> 
	  </ul>
	  
    </li>
	<li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="active">Fournisseurs <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="<c:url value="/moulin/moulinFrns/indexfm"/>">Fournisseur de maintenance</a></li>
        <li><a href="<c:url value="/moulin/moulinFrns/indexfo"/>">Fournisseur d'olive</a></li>                        
      </ul>

    </li>
	<li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Stock <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="<c:url value="/moulin/moulinStock/indexv"/>">Stock d'olive</a></li>
        <li><a href="<c:url value="/moulin/moulinStock/indexc"/>">Stock d'huile</a></li>                        
        <li><a href="<c:url value="/moulin/moulinStock/indexhuile"/>">Gerer le stock</a></li>                        
      
      </ul>
    </li>
	<!--<li><a href="#">Menu 2</a></li>-->
  </ul>
</div>
<!--Fin Menu-->

   <!--Gestion du molin d'olive-->

</div>
    <div class="headert_text_resize">
     
      <div class="clr"></div>
      <h2 class="bigtext"><span> Gestion <br/>du Moulin d'Olive</span></h2>
       
    </div>
  </div>
 <!--Fin Gestion du molin d'olive-->
  <div class="body"><div class="body_resize">
  <!--Menu left-->
   
   <table align="left">
   <tr>
   
    <td>
   <br/>
   <div align="center">
        <div class="list-group">
  <a href="#" class="list-group-item disabled">Sous menu</a>
  <a href="<c:url value="/moulin/moulinFrns/indexfo"/>" class="list-group-item active">Ajouter un fournisseur </a>
  <a href="<c:url value="/moulin/moulinFrns/ALLFOL"/>" class="list-group-item ">Consulter la liste des fournisseurs</a>
  <a href="<c:url value="/moulin/moulinBonAchat/indexfrnsbonachat"/>" class="list-group-item ">Bon d'achats par fournisseur</a>
</div>
</div>
       </td>
		  
   <td>
   </tr>
   </table>
   
   <!--Menu left-->
   
   <!--Code  J2ee-->
   
   <table width="55%" align="center">
   <tr>
   <td>
      <h2>Fournisseur d'olive</h2>

<!--Formulaire J2ee-->
	
	
	
	
<div >
${exception}
</div>
<div align="center" class="lead bg-info">
${error}

</div>
					
<f:form modelAttribute="frno" action="saveFrnO"  method="post" enctype="multipart/form-data">
<table width="80%">
<tr>

<tr><td><br></td></tr>

<tr>
<td>CIN du Fournisseur:</td>
<td><f:input path="cinFourn" class="form-control"  placeholder="CIN fournisseur" onkeydown="limitText(this,8)"/></td>
<td><f:errors path="cinFourn" cssClass="errors"/></td>
</tr>

<tr><td><br></td></tr>

<tr>
<td>Nom du Fournisseur:</td>
<td><f:input path="nomFourn" class="form-control"  placeholder="Nom fournisseur"/></td>
<td><f:errors path="nomFourn" cssClass="errors"/></td>
</tr>

<tr><td><br></td></tr>

<tr>
<td>Prenom du Fournisseur:</td>
<td><f:input path="prenomFourn" class="form-control"  placeholder="Prenom fournisseur"/></td>
<td><f:errors path="prenomFourn" cssClass="errors"/></td>
</tr>  

<tr><td><br></td></tr>

<tr>
<td>T�l�phone du fornisseur:</td>
<td><f:input path="telFourn" class="form-control"  placeholder="T�l�phone fournisseur"/></td>
<td><f:errors path="telFourn" cssClass="errors"/></td>
</tr> 

<tr><td><br></td></tr>
 
<tr>
<td>Adresse du fournisseur:</td>
<td><f:textarea path="adrFourn" class="form-control"  placeholder="Adresse fournisseur"/></td>
<td><f:errors path="adrFourn" cssClass="errors"/></td>
</tr> 

<tr><td><br></td></tr>

<tr><td></td>
<td>
<c:if test="${frno.cinFourn==null}">
<input class="btn btn-primary" type="submit" name="action" value="Ajouter">
</c:if>
<c:if test="${frno.cinFourn!=null}">
<input class="btn btn-primary" type="submit" name="action" value="Modifier">
</c:if>
</td>
</tr>

</table>
</f:form>



<!--Fin Formulaire J2ee-->
   
	
	  </td>
  </tr>
	  </table>
	</div>  
	  <div>
	   </div>
</div>
</div>
</body>
</html>
