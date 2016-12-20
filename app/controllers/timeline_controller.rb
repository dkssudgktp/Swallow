class TimelineController < ApplicationController
  def create
    Timeline.create(content: params[:texts])
    redirect_to :root
  end
  def comment
    Comment.create(timeline_id: params[:timeline_id], msg: params[:msg])
    redirect_to :root
  end
end
