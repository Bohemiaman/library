<?php
class RouterController extends Controller
{

    public  $controller;

    public function process($params = array())
    {
        $this->view = 'defaultLayout';
        $decodedUrl = $this->decodeURL($params[0]);
        $controllerUrl = array_shift($decodedUrl);
        $controllerUrl = $this->parseToCamelCase($controllerUrl, "-");

        if ($controllerUrl == '') {
            $this->redirect("home");
        }
        //nastavení headeru a zobrazení příslušného view
        if (file_exists("controller/$controllerUrl" . "Controller.php")) {
            $controllerClassName = $controllerUrl . "Controller";
            $this->controller = new $controllerClassName();

            $this->controller->process($decodedUrl);

            $this->data['title'] = $this->controller->header['title'];
            $this->data['keyWords'] = $this->controller->header['keyWords'];
            $this->data['description'] = $this->controller->header['description'];

            $this->displayView();
        }else{
        //    $this->redirect("error404");
        }
    }





    //načte URL do formátu vhodného pro směrování na stránce
    public function decodeURL($url)
    {
        $url = parse_url($url);
        $url["path"] = ltrim($url["path"], "/");
        $url["path"] = trim($url["path"]);
        $url["path"] = explode("/", $url["path"]);
        array_shift($url["path"]);
        $url = $url["path"];

        return $url;
    }

    public function parseToCamelCase($text, $delimeter)
    {
        $text = explode($delimeter, $text);
        foreach ($text as $key => $value) {
            $text[$key] = strtoupper($value[0]) . substr($value, 1);
        }
        return join($text);
    }

}
