<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>


<!DOCTYPE html>
<html>
	<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>Bayilik Ön Başvurusu</title>
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
			<script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
			
			<style>
				#Form{
					width:75%;
					margin-left:auto;
					margin-right:auto;
					margin-top:5%;
				}
				h5{
					width:23%;
					margin-left:auto;
					margin-right:auto;
					margin-top:2%;
				}
				
			</style>
			
			<script>
				$(document).ready(function(){
					$("#button").click( function(){
						var tc=$("#tc").val();
						if(!$.isNumeric(tc)){
							alert("Lütfen geçerli bir T.C. kimlik numarası girin!");
						}
						
					});
				});
			
			</script>
	</head>
	
	<body>
		
		<h5>BAYİLİK ÖN BAŞVURU FORMU</h5>
			
			<form:form modelAttribute="Application" action="save" method="post">
				
				<div id="Form">
					
					<div class="form-group row">
    					<form:label path="name" for="inputEmail3" class="col-sm-2 col-form-label">İsim Soyisim</form:label>
    					<div class="col-sm-10">
      						<form:input path="name" type="text" class="form-control" id="inputName" placeholder="İsim Soyisim" required="required"/>
    					</div>
  					</div>
  					
 				<div class="form-group row">
    					<form:label path="tcno" for="inputEmail3" class="col-sm-2 col-form-label">T.C. Kimlik</form:label>
    					<div class="col-sm-10">
      						<form:input path="tcno" type="text" class="form-control" id="tc" placeholder="T.C. Kimlik" maxlength="11" required="required"/>
    					</div>
  					</div>
  					
  					<div class="form-group row">
    					<form:label path="address" for="inputEmail3" class="col-sm-2 col-form-label">Adres</form:label>
    					<div class="col-sm-10">
      						<form:input path="address" type="textarea" class="form-control" id="inputAddress" placeholder="Adres" rows="5" cols="50" required="required"/>
    					</div>
  					</div>
  					
  					<div class="form-group row">
    					<form:label  path="phone" for="inputEmail3" class="col-sm-2 col-form-label">Telefon</form:label>
    					<div class="col-sm-10">
      						<form:input path="phone" type="tel" pattern="5[0-9]{2}[0-9]{3}[0-9]{2}[0-9]{2}" class="form-control" id="inputPhone" placeholder="5xxxxxxxxxx" required="required"/>
    					</div>
  					</div>
					
					<div class="form-group row">
    					<form:label path="email" for="inputEmail3" class="col-sm-2 col-form-label">E-Posta</form:label>
    					<div class="col-sm-10">
      						<form:input path="email" type="email" class="form-control" id="inputEmail" placeholder="example@hotmail.com" required="required"/>
    					</div>
  					</div>
  					
  					<div class="form-group row">
    					<form:label path="birth" for="inputEmail3" class="col-sm-2 col-form-label">Doğum Tarihi</form:label>
    					<div class="col-sm-10">
      						<form:input path="birth" type="date" class="form-control" id="inputDate" pattern="yyyy-MM-dd" required="required"/>
    					</div>
  					</div>
  			  						
  					<div class="form-group row">
    					<form:label path="quest3" for="inputEmail3" class="col-sm-2 col-form-label">Perakende ticareti ile uğraştınız mı?</form:label>
    					<div class="col-sm-10">
      						<form:input path="quest3" type="text" class="form-control" id="inputText3" required="required"/>
    					</div>
  					</div>
					
					<br />
					
					<div class="form-group row">
    					<form:label path="quest1" for="inputEmail3" class="col-sm-2 col-form-label">Lokumcu Baba'yı tercih etmenizin sebebi nedir?</form:label>
    					<div class="col-sm-10">
      						<form:input path="quest1" type="text" class="form-control" id="inputText1" required="required"/>
    					</div>
  					</div>
  					
  					<div class="form-group row">
    					<form:label path="quest2" for="inputEmail3" class="col-sm-2 col-form-label">Hangi il/ilçe/semt için Lokumcu Baba işletmeciliği düşünüyorsunuz?</form:label>
    					<div class="col-sm-10">
      						<form:input path="quest2" type="text" class="form-control" id="inputText2" required="required"/>
    					</div>
  					</div>
  					
  					<div class="form-group row">
    					<form:label path="investmentAmount" for="inputEmail3" class="col-sm-2 col-form-label">Yatırım miktarınız nedir?</form:label>
    					<div class="col-sm-10">
      						<form:input path="investmentAmount" type="number" class="form-control" id="inputNumber" placeholder="₺" required="required"/>
    					</div>
  					</div>
  					
  					<div class="form-group row">
    					<form:label path="additions" for="inputEmail3" class="col-sm-2 col-form-label">Eklemek İstedikleriniz</form:label>
    					<div class="col-sm-10">
      						<form:input path="additions" type="textarea" class="form-control" id="inputText3" />
    					</div>
  					</div>
  					
  					<form:input path="" class="btn btn-primary" type="submit" id="button" value="Gönder" />
  					
	  			
	  			</div>
			
			</form:form>
	</body>
</html>
