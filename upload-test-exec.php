<?php
	/*************************************************/
	/********* Created By: Vincent Abella ************/
	/********* Email: abellavincent@ymail.com ********/
	/*************************************************/
	
	
    include("connect.php");
	ini_set('upload_max_filesize', '10M');
	
	function insertFile($filename){
		$sql = mysql_query("INSERT INTO `file` (id, filename) VALUES (NULL, '$filename')");
		if($sql){
			return true;
		}else{
			return false;
		}
	}
	
	//$filename = $_POST['filename'];
	
    if(!isset($_FILES['filename'])){
		echo "No file selected";
	}
	else{
		
		$error=array();
		$extension=array("jpeg","jpg","png","gif", "docx", "pdf", "xlsx");
		foreach($_FILES["filename"]["tmp_name"] as $key=>$tmp_name)
		{
			echo "<br/>Filename: ".$file_name=$_FILES["filename"]["name"][$key];
			echo "<br/>Temporary: ".$file_tmp=$_FILES["filename"]["tmp_name"][$key];
			echo "<br/>Size: ".$size=$_FILES["filename"]["size"][$key];
			echo "<br/>Extension: ".$ext=pathinfo($file_name, PATHINFO_EXTENSION);
			if(in_array($ext,$extension))
			{
                
					if(!file_exists("uploads/".$file_name)){
						if(move_uploaded_file($file_tmp=$_FILES["filename"]["tmp_name"][$key], "uploads/".$file_name)){
                               //echo "Success on File Not Exist";
							 $insert = insertFile($file_name);
							   if($insert){
									header("location: index.php?success=true");
							   }
								else{
									echo mysql_error();
								}
					
						//echo "File Not Exist";
						//echo "<br/>Error: ".$error = $_FILES["filename"]["error"][$key];
						//echo "<br/>php info: ".phpinfo();
						}
					
					}
					else
						{
							$filename=basename($file_name,$ext);
							$newFileName=$filename.time().".".$ext;
							if(move_uploaded_file($file_tmp=$_FILES["filename"]["tmp_name"][$key], "uploads/".$newFileName)){
                                //echo "Success on File Exist";
								$insert = insertFile($newFileName);
								if($insert){
									header("location: index.php?success=true");
								}
                            }
							//echo "File Exist";
						}
				
               //echo "Extension of file is in our array list";
			}
			else{
				//array_push($error,"$file_name, ");
				echo "The file you upload is not included in allowed file extension list.";
			}
			
		}	
	}
?>