function functions(ev){
	var va=ev.id;
	if(va=="tp1"){
		document.getElementById("home").style.display="none";
		document.getElementById("tp").style.display="block";
		document.getElementById("st").style.display="none";
		document.getElementById("about").style.display="none";
		document.getElementById("contact").style.display="none";
		document.getElementById("viewtpo1").style.display="none";
	}if(va=="st1"){
		document.getElementById("home").style.display="none";
		document.getElementById("tp").style.display="none";
		document.getElementById("st").style.display="block";
		document.getElementById("about").style.display="none";
		document.getElementById("contact").style.display="none";
		document.getElementById("viewtpo1").style.display="none";
	}if(va=="home1"){
		document.getElementById("home").style.display="block";
		document.getElementById("tp").style.display="none";
		document.getElementById("st").style.display="none";
		document.getElementById("about").style.display="none";
		document.getElementById("contact").style.display="none";
		document.getElementById("viewtpo1").style.display="none";
	}	if(va=="about1"){
		document.getElementById("home").style.display="none";
		document.getElementById("tp").style.display="none";
		document.getElementById("st").style.display="none";
		document.getElementById("about").style.display="block";
		document.getElementById("contact").style.display="none";
		document.getElementById("viewtpo1").style.display="none";
	}if(va=="contact1"){
		document.getElementById("home").style.display="none";
		document.getElementById("tp").style.display="none";
		document.getElementById("st").style.display="none";
		document.getElementById("about").style.display="none";
		document.getElementById("contact").style.display="block";
		document.getElementById("viewtpo1").style.display="none";
	}
	
	if(va=="viewtpo"){
		document.getElementById("home").style.display="none";
		document.getElementById("tp").style.display="none";
		document.getElementById("st").style.display="none";
		document.getElementById("about").style.display="none";
		document.getElementById("contact").style.display="none";		
		document.getElementById("viewtpo1").style.display="block";
		//alert(va)
	}
}
function operation2(ev){
	var va=document.getElementById("placemen").value;	
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    document.getElementById("displayStudent").innerHTML=xmlhttp.responseText;
	    }
	  }
	xmlhttp.open("POST","selectSt.jsp?to="+va,true);
	xmlhttp.send(null);
}
