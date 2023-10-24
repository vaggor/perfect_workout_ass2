<?php
/**
* Branch Model
* The Branch model connects to the tb_branches table in the website database.
 * @package    Website-CMS
 * @author     Victor Sena Aggor
 * @version    Version1.0
*/

class Employee extends AppModel{
    var $name = 'Employee';
	var $primaryKey = 'id';
	var $useTable = 'employees';

	public function getListOfEmployeesDuePaymentToday(){
		$date = date('Y-m-d');
		$date = '2023-10-26';
		$employees = $this->find('all',array('conditions'=>array('next_payment_date'=>$date)));
		print_r($employees);exit;
	}

}
?>