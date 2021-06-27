<?php
class Db
{
    static $connection;
    public static function makeConnection($host, $database, $user, $password)
    {
        if (!isset($connection)) {
            $connection = new PDO(
                "mysql:host=$host;dbname=$database",
                $user,
                $password
            );
        }
        return self::$connection;
    }
    public static function retrieveAll($query, $args)
    {
        $stmt = self::$connection->prepare($query);
        $result = $stmt->execute($args);
        return $result->fetchAll();
    }
}
