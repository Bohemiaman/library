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
        $authorManager = new AuthorManager();
        $this->data["books"] = $bookManager->getAllBooks();
        $this->data["authors"] = $authorManager->getAllAuthors();
        if (isset($_POST['addNewBook'])) {
            if ($bookManager->addNewBook($_POST["name"], $_POST["authorId"], $_POST["price"], $_POST["description"]))
                $this->data['successMessage'] = 'Kniha byla úspěšně přídána';
            else $this->data['successMessage'] = 'Knihu se nepodařilo přidat';
        }
    }
}
