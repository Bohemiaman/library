<?php
class Error404Controller extends Controller
{
    function process($arguments = null)
    {
        $this->header = array(
            "title" => "Error404", "keyWords" => "Stránka nenalezena", "description" => "Chyba 404"
        );
        $this->view = 'error';
        header("HTTP/1.1 404 Not Found");
    }
}
