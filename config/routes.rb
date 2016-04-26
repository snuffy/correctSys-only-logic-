Rails.application.routes.draw do
  root :to => 'static_pages#home'

  namespace :teacher_system do

    get 'add_teacher' => 'teachers#new'
    get 'addmin_top' => 'teachers#show'
    get 'teach_cource' => 'teachers#attendance'
    get 'teach_cource_index' => 'teachers#index'
    get 'login' => 'sessions#new'
    post 'login' => 'sessions#create'
    delete 'logout' => 'sessions#destroy'

    resources :teachers
    resources :cources do
       resources :tasks
         get 'show_tasks' => 'tasks#show'
         get 'disp_task' => 'tasks#index'
         get 'add_task' => 'tasks#new'
     end
  end

  namespace :user_system do
    get 'add_student' => 'users#new'
    get 'attend_cource' => 'users#attendance'
    get 'login' => 'sessions#new'
    post 'login' => 'sessions#create'
    delete 'logout' => 'sessions#destroy'

    resources :users
    resources :cources
  end

  get 'add_user' => 'static_pages#choice'

  get 'index_user_teacher' => 'disp_users#index'


  get 'add_cource' => 'cources#new'
  get 'index_cource' => 'cources#index'
  get 'show_cource' => 'cources#show'
  resource :cources 

end
