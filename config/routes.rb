Rails.application.routes.draw do
  root to: 'home#show'
  get 'lock-test' => 'home#lock'
  get 'profile' => 'profile#show'

  get 'auth/auth0/callback' => 'auth0#callback'
  get 'auth/failure' => 'auth0#failure'
  get 'auth/logout' => 'auth0#logout'

  # Auth0 - alternate route handling for OmniAuth
  # namespace 'auth' do
  #   scope ':provider' do
  #     get 'callback'
  #     get 'failure'
  #   end
  # end
end
