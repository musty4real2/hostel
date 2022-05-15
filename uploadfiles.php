<?php
 include("connect.php");

$getAllFiles = mysql_query("SELECT * FROM `file`");
?>
<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Upload Payment Evidence</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
<script language="javascript" type="text/javascript">
var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
 if(popUpWin)
{
if(!popUpWin.closed) popUpWin.close();
}
popUpWin = open(URLStr,'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='+510+',height='+430+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}

</script>

</head>

<body>
	<?php include('includes/header.php');?>

	<div class="ts-main-content">
			<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h2 class="page-title">Evidence Payment</h2>
						<div class="panel panel-default">
							<div class="panel-heading">All Payment Evidence</div>
							<div class="panel-body">
                            
                            <form name="test" enctype="multipart/form-data" action="upload-test-exec.php" method="POST">
Choose a file to upload: <input name="filename[]" type="file" multiple/><br />
<input type="submit" value="Upload File" />
</form>
								<table id="zctb" class="table table-bordered " cellspacing="0" width="100%">
									<tr>
		<th>ID</th>
		<th>Filename</th>
		<th>Ext</th>
		<th>Display</th>
	</tr>
	
	<?php
		while($row = mysql_fetch_array($getAllFiles)){
			$id = $row['id'];
			$filename = $row['filename'];
			
			//get file extension
			$path = $filename;
			$ext = pathinfo($path, PATHINFO_EXTENSION);
			
			echo '<tr>
				<td>'.$id.'</td>
				<td>'.$filename.'</td>
				<td>'.$ext.'</td>';
				
				if($ext=="jpg"||$ext=="jpeg"||$ext=="png"||$ext=="gif"){
					echo '<td><img src="uploads/'.$filename.'" width="200px" height="200px"></td>';
				}else{
					echo '<td>'.$filename.'</td>';
				}
				
			echo '</tr>';
			
		 }
	?>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

</body>

</html>
