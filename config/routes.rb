# == Route Map
#
#                Prefix Verb   URI Pattern                      Controller#Action
#             tasks_new GET    /tasks/new(.:format)             tasks#new
#          tasks_create GET    /tasks/create(.:format)          tasks#create
#            tasks_edit GET    /tasks/edit(.:format)            tasks#edit
#          tasks_update GET    /tasks/update(.:format)          tasks#update
#      disp_users_index GET    /disp_users/index(.:format)      disp_users#index
#                  root GET    /                                static_pages#home
#              add_user GET    /add_user(.:format)              static_pages#choice
#           add_student GET    /add_student(.:format)           users#new
#           add_teacher GET    /add_teacher(.:format)           teachers#new
#    index_user_teacher GET    /index_user_teacher(.:format)    disp_users#index
#                 login GET    /login(.:format)                 sessions#new
#                       POST   /login(.:format)                 sessions#create
#                logout DELETE /logout(.:format)                sessions#destroy
#            add_cource GET    /add_cource(.:format)            cources#new
#          index_cource GET    /index_cource(.:format)          cources#index
#         attend_cource GET    /attend_cource(.:format)         users#attendance
#            addmin_top GET    /addmin_top(.:format)            teachers#show
#          teach_cource GET    /teach_cource(.:format)          teachers#attendance
#    teach_cource_index GET    /teach_cource_index(.:format)    teachers#index
# cource_index_of_tasks GET    /cource_index_of_tasks(.:format) tasks#index_cource
#              add_task GET    /add_task(.:format)              tasks#new
#                 users GET    /users(.:format)                 users#index
#                       POST   /users(.:format)                 users#create
#              new_user GET    /users/new(.:format)             users#new
#             edit_user GET    /users/:id/edit(.:format)        users#edit
#                  user GET    /users/:id(.:format)             users#show
#                       PATCH  /users/:id(.:format)             users#update
#                       PUT    /users/:id(.:format)             users#update
#                       DELETE /users/:id(.:format)             users#destroy
#              teachers GET    /teachers(.:format)              teachers#index
#                       POST   /teachers(.:format)              teachers#create
#           new_teacher GET    /teachers/new(.:format)          teachers#new
#          edit_teacher GET    /teachers/:id/edit(.:format)     teachers#edit
#               teacher GET    /teachers/:id(.:format)          teachers#show
#                       PATCH  /teachers/:id(.:format)          teachers#update
#                       PUT    /teachers/:id(.:format)          teachers#update
#                       DELETE /teachers/:id(.:format)          teachers#destroy
#               cources GET    /cources(.:format)               cources#index
#                       POST   /cources(.:format)               cources#create
#            new_cource GET    /cources/new(.:format)           cources#new
#           edit_cource GET    /cources/:id/edit(.:format)      cources#edit
#                cource GET    /cources/:id(.:format)           cources#show
#                       PATCH  /cources/:id(.:format)           cources#update
#                       PUT    /cources/:id(.:format)           cources#update
#                       DELETE /cources/:id(.:format)           cources#destroy
#                 tasks GET    /tasks(.:format)                 tasks#index
#                       POST   /tasks(.:format)                 tasks#create
#              new_task GET    /tasks/new(.:format)             tasks#new
#             edit_task GET    /tasks/:id/edit(.:format)        tasks#edit
#                  task GET    /tasks/:id(.:format)             tasks#show
#                       PATCH  /tasks/:id(.:format)             tasks#update
#                       PUT    /tasks/:id(.:format)             tasks#update
#                       DELETE /tasks/:id(.:format)             tasks#destroy
#

Rails.application.routes.draw do

  get 'tasks/new'

  get 'tasks/create'

  get 'tasks/edit'

  get 'tasks/update'

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
  get 'teach_cource_index' => 'teachers#index'

  get 'cource_index_of_tasks' => 'tasks#index_cource'
  get 'add_task' => 'tasks#new'
  
  resources :users
  resources :teachers
  resources :cources
  resources :tasks
end
