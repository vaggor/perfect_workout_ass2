<?php
class TestController extends AppController {

	public $name = 'Test';
	public $uses=array('Employee','Company');
	public $helpers = array('Form', 'Html', 'Text','Time', 'Number', 'Session', 'Paginator', 'Js', 'Cache');
   	
	public function index() {
	$data = $this->Employee->getListOfEmployeesDuePaymentToday();
	print_r($data);exit;
	}
	

}
?>
