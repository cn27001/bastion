<?php
echo $url = "http://localhost/dep5/admin.php?controller=admin_reports&action=docronreports&datetype=".$argv[1];
$c=file_get_contents($url);
echo $c;
?>