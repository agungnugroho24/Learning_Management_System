<?php
  include 'DAO/AccountsDAO.php';
  
  $data = $_POST['data'];
  $decoded = json_decode($data,true);
  
  foreach($decoded as $info){
    $$info['name'] = $info['value'];
  }
  
  $action = new Chikka();
  $action -> AddAccount($firstname,$lastname,$nickname,$emailadd,$passW,$gender,$bdate,$age);
  
