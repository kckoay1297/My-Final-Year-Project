<html>
<head>
<title>Drop down search</title>
<script>
function search(string){
	var xmlhttp;
	if(window.XMLHttpRequest){
		xmlhttp = new XMLHttpRequest();
	}else{
		xmlhttp = new ActiveXObject("XMLHTTP");
	}
	xmlhttp.onreadystatechange = function(){
		if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
			document.getElementById("search").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "search.php?s="+string, true);
	xmlhttp.send(null);
}
</script>
<style>
body{
	background: rgb(213,206,166);
}
#search{
	width: 250px; margin: 0 auto; max-height: 150px; border: 1px solid #f4f4f4; overflow: hidden;
}
#text{
	width: 250px; padding: 10px; border: 1px solid #f4f4f4; border-radius: 3px;
}
#searchtitle{
	width: 250px; padding: 10px; background: #fff;
}
#searchtitle:hover{
	background: #f4545f;
}
</style>
</head>
<body>
<div style="text-align: center; width: 500px; margin: 0 auto;">
	<h1>Drop down search</h1><span style="font-family: tahoma, sans-serif, arial; margin-left: 150px; font-size: 13px;">by Malik Naik</span><br/><br/>
	<input type="text" placeholder="Type to search.." onkeyup="search(this.value)" id="text" >
	<div id="search">
	</div>
</div>
</body>
</html>