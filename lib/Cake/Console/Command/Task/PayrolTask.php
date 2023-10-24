<?php

App::import('Component', 'Email');

App::uses('CakeEmail', 'Network/Email');


class PayrolTask extends Shell {



    var $uses = array('Employee','Company');
	

	public function getEmployeeDuePayment(){

		$data = $this->Employee->getListOfEmployeesDuePaymentToday();

		$this->out($data);

	}

}

?> 

