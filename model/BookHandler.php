<?php
class BookHandler
{
    function getAllBooks()
    {
        $books = Db::retrieveAll("SELECT books.`name`, author.name, author.surname, author.nationality FROM `books` JOIN author ON books.author_id=author.author_id");
        return $books;
    }
}
