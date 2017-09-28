<?php
    class posts extends CI_Controller{
        public function index(){
            /*if(!file_exists(APPPATH.'views/posts/' .$page.'.php')){
                show_404();
            }*/

            $data['title'] = 'Latest Post';
            $data['posts'] = $this->post_model->get_posts();
           // print_r($data['posts']);
            

            $this -> load -> view('templates/header');
            $this -> load -> view('posts/index' ,$data);
            $this -> load -> view('templates/footer');
        }

        public function view($slug = NULL){
            $data['post'] = $this->post_model->get_posts($slug);

            if(empty($data['post']))
            {
                show_404();
            }

            $data['title'] = $data['post']['title'];



            $this -> load -> view('templates/header');
            $this -> load -> view('posts/view' ,$data);
            $this -> load -> view('templates/footer');
        }
    }
