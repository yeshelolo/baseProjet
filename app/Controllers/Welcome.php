<?php
/**
 * Welcome controller.
 *
 * @author David Carr - dave@daveismyname.com
 *
 * @version 2.2
 * @date June 27, 2014
 * @date updated Sept 19, 2015
 */
namespace Controllers;

use Core\Controller;
use Core\View;
use Helpers\Session;
use Helpers\Tools;
use Helpers\Url;
use Models\BlockchainModel;

/**
 * Sample controller showing a construct and 2 methods and their typical usage.
 */
class Welcome extends Controller
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
        // Pour test commit

    }

    /**
     * Define Index page title and load template files.
     */
    public function index()
    {
        $data = [];

        View::renderTemplate('header', $data);
        View::render('welcome/welcome', $data);
        View::renderTemplate('footer', $data);
        exit;
    }

    /**
     * @return string
     */
    public function logOut()
    {
        Session::destroy();

        $data = [];

        View::renderTemplate('header', $data);
        View::render('welcome/welcome', $data);
        View::renderTemplate('footer', $data);

    }
}
