<?php
if(!defined('CAN_RUN')) {
	exit('Access Denied');
}

class backup_set extends base_set {
	protected $table_name = 'backup';
	protected $id_name = 'id';

}
?>
