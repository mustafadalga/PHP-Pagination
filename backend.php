<?php 
# GET -> pagination numarası
if (isset($_GET['page'])) 
{
	$page= htmlspecialchars($_GET["page"]);
	$page= (int) $page;
}
else
{
	$page=1;
}


$limit=6; // Her sayfada gösterilecek makale sayısı


//makalesayisi
$msayisi=$baglan->prepare("SELECT id FROM `makaleler`");
$msayisi->execute();
$makalesayisi=$msayisi->rowCount();
$sayfalar=ceil($makalesayisi/$limit);


if ($page >$sayfalar)
{
	$start=0;
}
else
{
	$start=($page > 1) ? ($page * $limit) - $limit :0;
}


// Makale Listele
$makale=$baglan->prepare("select * from makaleler  LIMIT :baglangic , :bitis");
$makale->bindParam(":baglangic",$start,PDO::PARAM_INT);
$makale->bindParam(":bitis",$limit,PDO::PARAM_INT);
$makale->execute();
$makale= $makale->fetchAll(PDO::FETCH_ASSOC);


 ?>