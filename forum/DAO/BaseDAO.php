<?php
  // show all errors and warning
  ini_set('display_errors',0);
  error_reporting(E_ALL);
  class BaseDAO{
  
  		private $dbHost = 'mysql:host=localhost;';
  		private $dbName = 'dbname=capstone';
  		private $username = "root";
  		private $password = "";
  		protected $dbCon = null;
  		
  		function openCon(){
  			
  			$this->dbCon = new PDO($this->dbHost.$this->dbName,$this->username,$this->password);
  		
  		}
  		
  		function closeCon(){
  		
  			$this->dbCon = null;
  		
  		}
  
  
  }
  


?>
