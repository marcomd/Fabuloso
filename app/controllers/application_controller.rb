class ApplicationController < ActionController::Base
  before_filter :localizate

  def localizate
    if params[:lang]
      session[:lang] = params[:lang]
    else
      session[:lang] ||= I18n.default_locale
    end
    I18n.locale = session[:lang]
  end
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  def current_ability
    @current_ability ||= Ability.new(current_user)
  end
  protect_from_forgery with: :exception
end
