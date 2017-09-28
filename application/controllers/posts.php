<?php
    class posts extends CI_Controller{
        public function index(){
            /*if(!file_exists(APPPATH.'views/posts/' .$page.'.php')){
                show_404();
            }*/

            $data['title'] = 'Latest Post';

            $this -> load -> view('templates/header');
            $this -> load -> view('posts/index' ,$data);
            $this -> load -> view('templates/footer');
        }
    }
