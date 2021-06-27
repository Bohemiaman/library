<?php
class BookDetailsController extends Controller
{
    public function process($params = array())
    {
        $bookName = $params[0];
        $bookHandler = new BookHandler();
        $this->data["book"] = $bookHandler->getSpecificBookByName($bookName);

        $this->header = array(
            "title" => "Informace o knize $bookName[1]", "keyWords" => "knihy, knihovna, čtení", "description" => "Detaily knihy $bookName"
        );
        
        $this->view = 'bookDetail';
    }
}
