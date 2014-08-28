Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'tasks#index'})
  match('/index', {:via => :get, :to => 'tasks#index'})
  match('tasks', {:via => :get, :to => 'tasks#index'})
  match('new', {:via => :get, :to => 'tasks#new'})
  match('tasks', {:via => :post, :to => 'tasks#create'})
  match('tasks/:id', {:via => :get, :to => 'tasks#show'})
  match('tasks/:id/edit', {:via => :get, :to => 'tasks#edit'})
  match('tasks/:id/', {:via => [:patch, :put], :to => 'tasks#update'})
  match('tasks/:id', {:via => :delete, :to => 'tasks#destroy'})
  match('tasks/:id/done', {:via => :get, :to => 'tasks#done'})
  match('tasks/:id/not_done', {:via => :get, :to => 'tasks#not_done'})

end
