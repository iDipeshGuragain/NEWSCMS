<?php
include "config.php";

if(empty($_FILES['new-image']['name'])) {
  $file_name = $_POST['old-image'];

} else {
  $old_image = $_POST['old-image'];
  unlink("upload/".$old_image);

  $errors = array();

  $file_name = $_FILES['new-image']['name'];
  $file_size = $_FILES['new-image']['size'];
  $file_tmp = $_FILES['new-image']['tmp_name'];
  $file_type = $_FILES['new-image']['type'];

  $tmp = explode('.', $file_name);
  $file_ext = end($tmp);


  $extensions = array("jpeg", "jpg", "png");


  if(in_array($file_ext, $extensions) === false) {
    $errors[] = "This extension file is not allowed, Please choose a JPG or PNG file";
  }


  if($file_size > 2097152) {
    $errors[] = "File Size Must be 2mb or Lower";
  }


  $new_name = time()."-".basename($file_name);
  $target_folder = "upload/".$new_name;


  $image_name = $new_name;

  if(empty($errors) === true) {
    move_uploaded_file($file_tmp, $target_folder);
    $target_folder = "upload/".$new_name;

  } else {
    print_r($errors);
    echo "file could not be uploaded";
    die();
  }
}

$sql = "UPDATE post SET title='{$_POST['post_title']}',description='{$_POST['postdesc']}',category={$_POST['category']},post_img ='{$image_name}' WHERE post_id = {$_POST['post_id']};";



if($_POST['old_category'] != $_POST['category']) {
  $sql .= "UPDATE category SET post=post-1 WHERE category_id={$_POST['old_category']};";
  $sql .= "UPDATE category SET post=post+1 WHERE category_id={$_POST['category']};";
}

$result = mysqli_multi_query($conn, $sql);

if($result) { //if query success
  header("Location: {$hostname}/admin/post.php");
} else {
  echo "Query Failed";
}
?>