<?php
class BookManagementController extends Controller
{
    function process($arguments = null)
    {
        $userManager = new UserManagement();
        if (!$userManager->checkIfUserIsAdmin())
            $this->redirect('error');

        $this->header = array(
            "title" => "Správa knih", "keyWords" => "knihy, administrativa, správa, přidání knihy, odebrání knihy, změna knihy", "description" => "Administrativní stránka systému "
        );
        $this->view = 'bookManagement';
        $bookManager = new BookManager();
        $this->data["books"] = $bookManager->getAllBooks();
    }
}
