Rails.application.routes.draw do
  get '/', to: 'magic#index', as: 'home'
  get '/new', to: 'magic#new', as: 'new_question'
  post '/', to: 'magic#create'
end
