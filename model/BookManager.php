<?php
class BookManager
{
    function getAllBooks()
    {
        $books = Db::retrieveAll("SELECT books.`name`, books.`url`, authors.name, authors.surname, authors.nationality, books.price FROM `books` JOIN authors ON books.author_id=authors.author_id");
        return $books;
    }
    function getSpecificBookByName($name)
    {
        $book = Db::retrieveOne("SELECT books.`name`,books.`price`, books.`description`,books.`url`, authors.name, authors.surname, authors.nationality FROM `books` JOIN authors ON books.author_id=authors.author_id WHERE books.`name` = :name", [':name' => $name]);

        return $book;
    }
    function getSpecificBookByURL($url)
    {
        $book = Db::retrieveOne("SELECT books.`name`,books.`price`, books.`description`,books.`url`, authors.name, authors.surname, authors.nationality FROM `books` JOIN authors ON books.author_id=authors.author_id WHERE books.`url` = :url", [':url' => $url]);

        return $book;
    }
    function addNewBook($bookName, $authorId, $price, $description)
    {
        //TODO validace
        $url = str_replace(' ', "_", $bookName);
        $url = StringOperator::normalize($url);
        return Db::executeQuery(
            "INSERT INTO `books`(`name`, `author_id`, `price`, `description`, `url`) VALUES (:name ,:authorId,:price,:description,:url)",
            [":name" => $bookName, ":authorId" => $authorId, ":price" => $price, ":description" => $description, ":url" => $url,]
        );
    }
}
