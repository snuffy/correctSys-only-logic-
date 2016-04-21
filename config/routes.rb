Rails.application.routes.draw do

  get 'disp_users/index'

  root :to => 'static_pages#home'

  get 'add_user' => 'static_pages#choice'
  get 'add_student' => 'users#new'
  get 'add_teacher' => 'teachers#new'
  get 'index_user_teacher' => 'disp_users#index'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'add_cource' => 'cources#new'
  get 'index_cource' => 'cources#index'

  get 'attend_cource' => 'users#attendance'

  get 'addmin_top' => 'teachers#show'

  get 'teach_cource' => 'teachers#attendance'

  resources :users
  resources :teachers
  resources :cources
end
