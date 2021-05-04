<?php
/**
 * Desc: This takes in html document as input 
 * and list of css, js and resource to preload
 * 
 * Version 1.0.0
 */

class Css_Js_Manager_Filtering{

    public $html_document;
    public $css;
    public $js;
    public $dom;
    public $final_dom;

    public function __construct( $html_document, $css, $js ) {
        $this->html_document = $html_document;
        $this->css = $css;
        $this->js = $js;
        $this->dom_parser();
    }

    public function html(){
        return $this->final_dom;
    }

    function css_parser(){
        if(is_admin()) return;
        foreach($this->css as $css){
            $href = $this->url_for_regular_exp($css['url']);
            $method = $css['method'];
            $remove = $css['remove'];
            if($remove){
                $this->html_document = preg_replace("/(<link.*rel=[\"|\']stylesheet[\"|\'].*href=[\"|\']".$href.".*[\"|\'].*>)/i","",$this->html_document);
            }else{
                
                if($method == 'async'){
                    $load = " as='style' onload=\"this.onload=null;this.rel='stylesheet'\" />";
                    $link = '<link rel="preload" href="'.$css['url'].'" '.$load;
                }else{
                    $link = '$1';
                }

                $this->html_document = preg_replace("/(<link.*rel=[\"|\']stylesheet[\"|\'].*href=[\"|\']".$href.".*[\"|\'].*\/>)/i",$link,$this->html_document);
            }
            
        }
    }

    function js_parser(){
        if(is_admin()) return;
        foreach($this->js as $js){
            $href = $this->url_for_regular_exp($js['url']);
            $method = $js['method'];
            $remove = $js['remove'];
            if($remove){
                $this->html_document = preg_replace("/(<script.*src=[\"|\']".$href.".*[\"|\'].*>)/i","",$this->html_document);
            }else{
                
                if($method == 'async'){
                    $load = " async='async'";
                    $link = '<script type="text/javascript" src="'.$js['url'].'" '.$load.'></script>';
                }elseif($method == 'defer'){
                    $load = " defer='defer'";
                    $link = '<script type="text/javascript" src="'.$js['url'].'" '.$load.'></script>';
                }else{
                    $link = '$1';
                }

                $this->html_document = preg_replace("/(<script.*src=[\"|\']".$href.".*[\"|\'].*\>)/i",$link,$this->html_document);
            }
            
        }
    }


    function url_for_regular_exp($url){
        return str_replace('.','\.',str_replace('/','\/',$url));
    }

    private function dom_parser(){
        $this->css_parser();
        $this->js_parser();
        $this->final_dom = $this->html_document;
    }

    private function remove_query_string($url){
        $return_url = explode( '?', $url ); 	
        return $return_url[0];
    }
}