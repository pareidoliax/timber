Rails.application.routes.draw do
  root 'welcome#home'
  get 'welcome/home'
  get 'welcome/about'
end
