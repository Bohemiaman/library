<?php
class BookHandler
{
    function getAllBooks()
    {
        $clanky = Db::retrieveAll("SELECT books.`name`, author.name, author.surname, author.nationality FROM `books` JOIN author ON books.author_id=author.author_id");
        var_dump($clanky);
        return $clanky;
    }
}
