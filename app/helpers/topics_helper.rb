module TopicsHelper

  def user_is_authorized_for_topics?
    current_user && current_user.admin?
  end

  def moderator_user?
    current_user && current_user.moderator?
  end

  def not_signed_in?
    current_user
  end

end
