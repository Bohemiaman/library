<?php
class BookDetailsController extends Controller
{
    public function process($params = array())
    {
        $bookURL = $params[0];
        $bookHandler = new BookHandler();
        $this->data["book"] = $bookHandler->getSpecificBookByURL($bookURL);

        $this->header = array(
            "title" => "Informace o knize" . $this->data["book"][0], "keyWords" => "knihy, knihovna, čtení", "description" => "Detaily knihy" . $this->data["book"][0]
        );

        $this->view = 'bookDetail';
    }
}
