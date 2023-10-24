<?php
/**
* Branch Model
* The Branch model connects to the tb_branches table in the website database.
 * @package    Website-CMS
 * @author     Victor Sena Aggor
 * @version    Version1.0
*/

class Company extends AppModel{
    var $name = 'Company';
	var $primaryKey = 'id';
	var $useTable = 'companies';

}
?>