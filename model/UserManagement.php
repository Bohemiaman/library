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
        $password_hash = password_hash($password, PASSWORD_BCRYPT);
        $status = (($userInformation['login'] == $login) && ($userInformation['password_hash'] == $password_hash));

        //hash hesla v session nechci
        unset($userInformation["password_hash"]);
        $_SESSION["userInformation"] = $userInformation;
        return $status;
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
}
