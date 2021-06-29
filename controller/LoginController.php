<?php
class LoginController extends Controller
{
    function process($params = array())
    {
        $this->header = array(
            "title" => "Přihlášení do systému", "keyWords" => "přihlášení, uživatel, login", "description" => "Přihlášení do systému"
        );
        $this->view = 'loginView';

        $userManagement = new UserManagement();
        if ($userManagement->checkIfUserIsLoggedIn())
            $this->redirect("accountInformation");
        //FIXME přímý přístup k postu
        if (isset($_POST['login'])) {
            //FIXME - ošetření
            if ($userManagement->loginUser($_POST["username"], $_POST["password"])) {
                $this->redirect("home");
            }
        }
    }
}
