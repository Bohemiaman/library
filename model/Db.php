<?php
class Db
{
    static $connection;
    public static function makeConnection($host, $database, $user, $password)
    {
        if (!isset($connection)) {
            self::$connection = new PDO(
                "mysql:host=$host;dbname=$database;charset=utf8",
                $user,
                $password
            );
        }
        return self::$connection;
    }

    //vrátí vše
    public static function retrieveAll($query, $args = null)
    {
        $stmt = self::$connection->prepare($query);
        $stmt->execute($args);
        return $stmt->fetchAll();
    }
    //vrátí 1 řádek
    public static function retrieveOne($query, $args = null)
    {
        $stmt = self::$connection->prepare($query);
        $stmt->execute($args);
        return $stmt->fetch();
    }

    //pro provedení příkazu, kde nás zajímá pouze, jesli proběhl
    public static function executeQuery($query, $args = null)
    {
        $stmt = self::$connection->prepare($query);
        return $stmt->execute($args);
    }
}
