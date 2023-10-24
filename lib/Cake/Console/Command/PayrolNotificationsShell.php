<?php

class PayrolNotificationsShell extends Shell {
    var $tasks = array('Payrol'); 
	public function main() {
		$this->Payrol->getEmployeeDuePayment();
   }
}
