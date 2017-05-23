Rails.application.routes.draw do

  root 'questions#new'
  
  get 'comments/create'

  get 'comments/delete'

  get 'comments/create'

  get 'comments/delete'
    
  get'/my-secret-view'=>'questions#index'
  
  post'questions/create'
  
  # get 'comments/create'

  # get 'comments/edit'
  
  
  get 'delete/:question_id' =>'questions#delete'
  
  get 'edit/:question_id' => 'questions#edit'
  
  post 'update/:question_id' =>'questions#update'
  
  post '/my-secret-view/:question_id/create' => 'comments#create'
  
  get 'comments/delete/:comment_id' => 'comments#delete'
  

end
