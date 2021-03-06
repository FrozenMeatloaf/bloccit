class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  # Any method or helper (etc) within Application Controller may apply
  # to all other controllers
  protect_from_forgery with: :exception
  include SessionsHelper

  private

  # method that, unless a current_user is signed-in, will flash an alert upon
  # an unwarranted action.  As an example, see before_action within controllers
  # Since method is created within ApplicationController, method is warranted throughout
  # all controllers
  def require_sign_in
    # if you are not signed in as a current_user via Session, return to new_session_path
    # with an alert
    unless current_user
      flash[:alert] = 'You must be logged in to do that'

      redirect_to new_session_path
    end
  end
end
