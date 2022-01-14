<?php
require_once('bdd.php');
if (isset($_POST['delete']) && isset($_POST['id'])){
	
	
	$id = $_POST['id'];
	
	$sql = "DELETE FROM events WHERE id = $id";
	$query = $bdd->prepare( $sql );
	if ($query == false) {
	 print_r($bdd->errorInfo());
	 die ('Error prepare sql');
	}
	$res = $query->execute();
	if ($res == false) {
	 print_r($query->errorInfo());
	 die ('Error execute res');
	}
	
}elseif (isset($_POST['title']) && isset($_POST['color']) && isset($_POST['id'])){
	
	$id = $_POST['id'];
	$title = $_POST['title'];
	$color = $_POST['color'];
	
	$sql = "UPDATE events SET  title = '$title', color = '$color' WHERE id = $id ";

	
	$query = $bdd->prepare( $sql );
	if ($query == false) {
	 print_r($bdd->errorInfo());
	 die ('Error prepare query');
	}
	$sth = $query->execute();
	if ($sth == false) {
	 print_r($query->errorInfo());
	 die ('Error execute sth');
	}

}
header('Location: index.php');
?>