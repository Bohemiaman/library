<?php
class UserManagement
{
    function selectUserFromDb($login)
    {
        $user = Db::retrieveOne("SELECT * FROM `users` WHERE `login`=:login", [':login' => $login]);
        return $user;
    }

    function loginUser($login, $password): bool
    {
        $userInformation = $this->selectUserFromDb($login);
        //ověření loginů je redundantní, ale pomůže to ošetřit chyby alespoň
        $password_hash = password_verify($password, PASSWORD_BCRYPT);
        $authorized = (strtolower(($userInformation['login'])) == strtolower($login) && password_verify($password, $userInformation["password_hash"]));

        if (!$authorized) {
            return false;
        }
        //hash hesla v session nechci
        unset($userInformation["password_hash"]);
        $_SESSION[KEY_TO_USER_INFORMATION] = $userInformation;
        return $authorized;
    }

    function registerUser($login, $password, $displayName, $admin = 0): bool
    {
        //TODO REGEX na validaci do guard clause, nejspíše pomocí další metody
        if (false) {
            return false;
        }

        $password_hash = password_hash($password, PASSWORD_BCRYPT);
        $executed = Db::executeQuery(
            "INSERT INTO `users`(`login`, `displayName`, `password_hash`, `admin`) VALUES ( :login, :displayName, :password_hash, :admin)",
            [':login' => $login, ':password_hash' => $password_hash, ':displayName' => $displayName, 'admin' => $admin]
        );
        return $executed;
    }

    function checkIfUserIsLoggedIn(): bool
    {
        return isset($_SESSION[KEY_TO_USER_INFORMATION]);
    }
    function checkIfUserIsAdmin(): bool
    {
        if (!$this->checkIfUserIsLoggedIn()) {
            return false;
        }
        return ($_SESSION[KEY_TO_USER_INFORMATION]['admin'] == 1);
    }
    function logoutUser()
    {
        session_destroy();
        //samotné destroy nebylo dost rychlé
        unset($_SESSION);
    }
}
