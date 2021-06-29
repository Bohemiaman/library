<?php
class logoutController extends Controller
{
    public function process($params = array())
    {
        $this->header = array(
            "title" => "Odhlášení", "keyWords" => "odhlášení", "description" => "Odhlášení ze systému"
        );
        $this->view = 'logoutView';
        $userManagement = new UserManagement();
        $userManagement->logoutUser();
    }
}
