<?php
class LoginController extends Controller
{
    function process($params = array())
    {
        $this->header = array(
            "title" => "Přihlášení do systému", "keyWords" => "přihlášení, uživatel, login", "description" => "Přihlášení do systému"
        );
        $this->view = 'loginView';
    }
}
