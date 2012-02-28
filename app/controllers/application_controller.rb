class ApplicationController < ActionController::Base
  protect_from_forgery

  #before_filter :populate_leftmenu

  def species_menu
    @species_menu ||= Specie.all
  end

  private 

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def printif( controller, action, mach_ok, mach_err )
    if  params[:controller] == controller && params[:action] == action
      mach_ok
    else
      mach_err
    end
  end

  def logged_in?
    !!current_user
  end
    

  helper_method :current_user, :species_menu, :printif

end
