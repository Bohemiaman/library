<?php
class HomeController extends Controller
{
    public function process($params = array())
    {
        $this->header = array(
            "title" => "Vítejte v knihovním systému eLibrary", "keyWords" => "knihy, knihovna, čtení", "description" => "Úvodní stránka knihovny eLibrary."
        );
        $this->view = 'homeView';
        $bookHandler = new BookHandler();
        $this->data["books"] = $bookHandler->getAllBooks();
    }
}
