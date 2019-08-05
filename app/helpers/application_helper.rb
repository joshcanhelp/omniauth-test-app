module ApplicationHelper
  def logged_in?
    !session[:userinfo].nil?
  end

  def avatar_url
    default_url = 'https://s.gravatar.com/avatar/'
    return default_url unless logged_in?
    return default_url if session[:userinfo]['info'].nil?
    return default_url unless session[:userinfo]['info']['image']
    session[:userinfo]['info']['image']
  end
end
