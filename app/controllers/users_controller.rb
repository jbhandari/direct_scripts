class UsersController < ApplicationController
  respond_to :html

  def new
    @user = User.new
  end

  def create
    @user = sign_up(user_params)
    sign_in(@user) do
      respond_with(@user, location: root_path) and return
    end
    render :new
  end

  private

  def user_params
    params.require(:user).permit(:email, :password).merge(profile: user_profile)
  end

  def user_profile
    profile_class.new
  end

  def profile_class
    if valid_profile_class?
      params[:user][:profile].constantize
    else
      raise "You must choose a given profile"
    end
  end

  def valid_profile_class?
    %w(Patient Physician Clinic).include? params[:user][:profile]
  end

end
