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
        extract($this->data);
        require("view/$this->view.phtml");
    }

}
