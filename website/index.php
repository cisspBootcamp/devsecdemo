<?php 
$bdd = mysqli_connect("localhost","demo","mypassword","demobd") or die("Not connected MYSQL");
?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CISSP BootCamp 01<title>
<style type="text/css">
div#container
{
   width: 800px;
   position: relative;
   margin-top: 0px;
   margin-left: auto;
   margin-right: auto;
   text-align: left;
}
</style>
<style type="text/css">
body
{
   text-align: center;
   margin: 0;
   background-color: #C0C0C0;
   color: #000000;
}
</style>
<style type="text/css">
a:hover
{
   color: #290200;
}
</style>


<!--[if lt IE 7]>
<style type="text/css">
   img { behavior: url("pngfix.htc"); }
</style>
<![endif]-->
</head>
<body>
<div id="container">
<div id="bv_Image1" style="margin:0;padding:0;position:absolute;left:86px;top:40px;width:147px;height:174px;text-align:left;z-index:3;">
<a href="#" onmouseover="ShowObjectWithEffect('bv_Image1', 1, 'puff', 500);return false;"><img src="images/287f7c337c578f74bd6be4089a1b1b7c.png" id="Image1" alt="" align="top" border="0" style="width:147px;height:174px;"></a></div>
<div id="bv_Text1" style="margin:0;padding:0;position:absolute;left:262px;top:31px;width:372px;height:86px;text-align:left;z-index:4;">
<font style="font-size:43px" color="#000000" face="Candara"><b>Boot</b></font><font style="font-size:43px" color="#004993" face="Candara"><b>Camp</b></font><font style="font-size:29px" color="#000000" face="Arial"><b><br>
</b>OPERATIONS PORTAL-BONJOUR</font></div>
<div id="Layer1" style="position:absolute;background-color:#AEE4FF;left:263px;top:139px;width:418px;height:150px;z-index:5" title="">
<form action="index.php" method="GET">
<input type="submit" id="Button1" name="submit" value="Open" style="position:absolute;left:276px;top:105px;width:120px;height:32px;font-family:Arial;font-size:13px;z-index:0">
<input type="text" id="Editbox1" style="position:absolute;left:30px;top:70px;width:365px;height:20px;border:1px #C0C0C0 solid;font-family:'Courier New';font-size:16px;z-index:1" name="operation" value="">
</form>

<?php 
if(isset($_GET['operation'])) {
$operation = $_GET['operation'];


$query = "SELECT * from ops where operation=".$operation."";
echo $query;
#$sonuc = mysql_query($query);
$sonuc = mysqli_query($bdd,$query); 
$result = mysqli_fetch_array($sonuc);
if($result){
	echo "<font style='font-size:13px; position:absolute;left:10px;top:159px;width:411px;height:16px;text-align:left;z-index:6;' color='#000000' face='Arial'>Console&gt;_ <b>operation : </b>". $result['operation']."<br> Console&gt;_  <b>Code : </b>". $result['password'] . "<br></font>" ;

}else{
	echo '<font style="font-size:13px; position:absolute;left:10px;top:159px;width:411px;height:16px;text-align:left;z-index:6;" color="#000000" face="Arial">Console&gt;_ NOT CONNECTED - PAS DE CONNEXION </font>' ;
	#mysqli_error();
}
}
?>
<div id="bv_Text2" style="margin:0;padding:0;position:absolute;left:33px;top:34px;width:169px;height:16px;text-align:left;z-index:2;">
<font style="font-size:13px" color="#000000" face="Arial"><b>OPERATION CODE</b></font></div>
</div>

<div id="bv_Text3" style="margin:0;padding:0;position:absolute;left:267px;top:299px;width:411px;height:16px;text-align:left;z-index:6;">

</div>
</div>
</body>
</html>
