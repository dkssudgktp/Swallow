module PagesHelper
  def user(id)
    @user = User.find_by(id: id)
  end

  def user_isvalue?
    user.nil?
  end
  def user_timelines
    @user_timelines = Timeline.find_by(id_num: user.id)
  end
  def user_timelines?
    !user_timelines.nil?
  end
end
