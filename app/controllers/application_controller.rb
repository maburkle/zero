class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_forum_from_forum_id
  	@forum = Forum.find(params[:forum_id])
  end

  def set_subject_from_subject_id
  	@subject = Subject.find(params[:subject_id])
  end

  def set_topic_from_topic_id
  	@topic = Topic.find(params[:topic_id])
  end

  def set_discuss_from_discuss_id
  	@discuss = Discuss.find(params[:discuss_id])
  end
end
