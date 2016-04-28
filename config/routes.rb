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
      resources :cources, shallow: true do
         get 'show_tasks' => 'tasks#show'
         get 'index_attend_users'=>'cource#index_attend_users'
         resources :tasks do
            resources :answers
         end

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


    resource :cources
    get'attend_user' => 'cources#index_attend_users'

    get 'add_user' => 'static_pages#choice'

    get 'index_user_teacher' => 'disp_users#index'


    get 'add_cource' => 'cources#new'
    get 'index_cource' => 'cources#index'
    get 'show_cource' => 'cources#show'



  end
