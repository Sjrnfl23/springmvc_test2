checkNull = function(obj,value,message) {
/*	if ($("#shIfcgName").val() == ""  ||  $("#shIfcgName").val() == null) {
		alert("null 이다.");
		$("#shIfcgName").focus();
		return false;
	}*/
	
	if(value == "" || value == null){
		alert("vaildation.js: "+message);
		obj.focus();
		return false;
	}else{
		return true;
	}

}