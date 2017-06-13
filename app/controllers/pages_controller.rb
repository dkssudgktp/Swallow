class PagesController < ApplicationController
  def index
    @timelines = Timeline.all
  end

  def user_page
    user(params[:id])

    if user_isvalue?
      redirect_to :root
    end
  end
end
