Rails.application.routes.draw do
  root to: 'pages#index'

  get '/pages/selects', to: 'pages#selects', as: :pages_selects
  get '/pages/h_forms', to: 'pages#h_forms', as: :pages_h_forms
end
