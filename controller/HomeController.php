<?php
class HomeController extends Controller
{
    public function process($params = array())
    {
        $this->header = array(
            "title" => "Vítejte v knihovním systému eLibrary", "keyWords" => "knihy, knihovna, čtení", "description" => "Úvodní stránka knihovny eLibrary."
        );
        $this->view = 'homeView';
        $bookManager = new BookManager();
        $this->data["books"] = $bookManager->getAllBooks();
    }
}
