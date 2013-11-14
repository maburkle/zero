class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def set_forum_from_forum_id
  	@forum = Forum.friendly.find(params[:forum_id])
  end

  def set_subject_from_subject_id
  	@subject = Subject.friendly.find(params[:subject_id])
  end

  def set_topic_from_topic_id
  	@topic = Topic.friendly.find(params[:topic_id])
  end

  def set_discuss_from_discuss_id
  	@discuss = Discuss.friendly.find(params[:discuss_id])
  end

  def set_user_from_current_user
    @user = current_user
  end
    
  protected

   def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :password, :password_confirmation) }
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :password, :remember_me) } 
     
   end

end
