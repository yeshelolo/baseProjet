<?php
/**
 * Created by PhpStorm.
 * User: rougelotugo
 * Date: 2019-03-11
 * Time: 10:21
 */

namespace Controllers;


use Core\Controller;

class LoginController extends Controller
{
    /**
     * Call the parent construct.
     */
    public function __construct()
    {
        parent::__construct();
    }

    public function ajax()
    {
        $action = Tools::getPost("action");

    }

    public function login()
    {
        $log = $_POST["login"];
        $pwd = $_POST["password"];
    }

}