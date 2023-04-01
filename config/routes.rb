Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'api/users/sessions',
    registrations: 'api/users/registrations'
  }

  scope '/api/v1' do
    resources :users
  end
end
