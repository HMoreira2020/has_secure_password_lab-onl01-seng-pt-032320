class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def homepage 
    @user = User.find_by(id: session[:user_id])
    render :homepage
  end 

end

