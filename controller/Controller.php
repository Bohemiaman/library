<?php
abstract class Controller
{
    protected $header = array("title" => "", "keyWords" => "", "description" => "");
    protected $data = array();
    protected $view;

    abstract function process($params = array());

    //postará se o poskytnutí view
    function displayView()
    {
        $this->data = $this->sanitizeInput($this->data);
        extract($this->data);
        require("view/$this->view.phtml");
    }
    function sanitizeInput($x = null)
    {
        if (!isset($x))
            return null;
        elseif (is_string($x))
            return htmlspecialchars($x, ENT_QUOTES);
        elseif (is_array($x)) {
            foreach ($x as $k => $v) {
                $x[$k] = $this->sanitizeInput($v);
            }
            return $x;
        } else
            return $x;
    }
}
