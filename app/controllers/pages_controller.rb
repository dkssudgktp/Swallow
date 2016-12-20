class PagesController < ApplicationController
  def index
    @timelines = Timeline.all
  end
end
