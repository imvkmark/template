<?php
session_set_cookie_params(4000);
session_start();
$_SESSION['test'] = '12345';
var_dump($_SESSION);