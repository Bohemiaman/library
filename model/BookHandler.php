<?php
class BookHandler
{
    function getAllBooks()
    {
        $books = Db::retrieveAll("SELECT books.`name`, author.name, author.surname, author.nationality FROM `books` JOIN author ON books.author_id=author.author_id");
        return $books;
    }
    function getSpecificBookByName($name)
    {
        $book = Db::retrieveOne("SELECT books.`name`,books.`price`, books.`description`, author.name, author.surname, author.nationality FROM `books` JOIN author ON books.author_id=author.author_id WHERE books.`name` = :name", [':name' => $name]);
        return $book;
    }
}
