<?php
class logoutController extends Controller
{
    public function process($params = array())
    {
        $this->header = array(
            "title" => "Přihlášení do systému", "keyWords" => "přihlášení, uživatel, login", "description" => "Přihlášení do systému"
        );
        $this->view = 'logoutView';
        $userManagement = new UserManagement();
        $userManagement->logoutUser();
    }
}
