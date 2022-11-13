$error = $_FILES['file']['error'];
$tmpfile = $_FILES['file']['tmp_name'];
$filename = $_FILES['file']['name'];
$folder = "../file/upload/".$filename;
if( $error != UPLOAD_ERR_OK ){
	switch( $error ) {
    		case UPLOAD_ERR_INI_SIZE:
        	case UPLOAD_ERR_FORM_SIZE:
        		echo "<script>alert('파일이 너무 큽니다.');";
            		echo "window.history.back()</script>";
            		exit;
	}
}
move_uploaded_file($tmpfile, $folder);
$sql = "INSERT INTO board(title, writer, name, written, content, file, hit, liked) VALUES ('$title', '$writer', '$name', now(), '$content', '$filename', 0, 0);";