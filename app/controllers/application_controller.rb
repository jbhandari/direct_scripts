class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Monban::ControllerHelpers

  private

  def ensure_signed_in
    if !signed_in?
      flash[:notice] = "You do not have permission"
      redirect_to new_session_path
    end
  end

  def ensure_user_validity
    if current_user.profile.id != params[:id].to_i
      flash[:notice] = "You do not have permission"
      redirect_to new_session_path
    end
  end
end
