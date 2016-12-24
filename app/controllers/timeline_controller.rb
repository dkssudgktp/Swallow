class TimelineController < ApplicationController
  def create
    if user_signed_in?
      Timeline.create(id_num: current_user.id ,name: current_user.name, content: params[:texts])
      redirect_to :root
    end
  end
  def comment
    if user_signed_in?
      Comment.create(id_num: current_user.id , name: current_user.name, timeline_id: params[:timeline_id], msg: params[:msg])
      redirect_to :root
    end
  end
end
