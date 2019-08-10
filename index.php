<?php 
include "db.php";
include "backend.php";
?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>PHP - Pagination</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<ul class="list-group list-group-flush">
			<?php foreach ($makale as $satir):?>

				<li class="list-group-item"><?php echo $satir["baslik"]; ?></li>

			<?php endforeach; ?>
		</ul>

		<ul class="pagination justify-content-center m-4">
			<li class="page-item">
				<a class="page-link" href="?page=<?php echo ($page > 1) ? $page - 1 : 1; ?>">Geri</a>
			</li>
			<?php for($i=1;$i<=$sayfalar;$i++): ?>
				<li class="page-item <?php if ($i === $page) echo "active"; ?>">
					<a class="page-link" href="?page=<?php echo $i; ?>" <?php if($i===$page) echo 'class="selected";' ?>  ><?php echo $i; ?></a>
				</li>
			<?php endfor; ?>
			<li class="page-item">
				<a class="page-link" href="?page=<?php echo ($page < $sayfalar) ? $page + 1 : $sayfalar; ?>">İleri</a>
			</li>
		</ul>
	</div>

</body>
</html>