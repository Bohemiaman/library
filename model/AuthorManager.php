<?php
class AuthorManager
{
    function getAllAuthors()
    {
        $authors = Db::retrieveAll("SELECT `author_id`, `name`, `nationality`, `surname` FROM `authors`");

        return $authors;
    }
}
