class HomeController < ApplicationController

  def show
    render 'show'
  end

  def lock
    @client_id = 'MKaR4H5apywkc7YhtZg7jo6qzCEDDZeN'
    @domain = 'auth0-php.auth0.com'

    state = SecureRandom.hex(24)
    session['omniauth.state'] = state
    @state = state
  end
end
