Rails.application.routes.draw do
  resources :lumberjills

  resources :lumberjacks

  root 'welcome#home'
  get 'welcome/home'
  get 'welcome/about'
end
