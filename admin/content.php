<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018-05-29
 * Time: 8:04
 */
    require substr(__DIR__,0,-6).'/init.inc.php';
    global $_tpl;
    Validate::checkSession();
    $_content = new ContentAction($_tpl);
    $_content->_action();
    $_tpl->display('content.tpl');
?>
