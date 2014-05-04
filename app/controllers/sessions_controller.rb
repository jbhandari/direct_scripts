class SessionsController < ApplicationController
  respond_to :html

  def new
  end

  def create
    user = authenticate_session(session_params)
    if sign_in(user)
      redirect_to redirect_path_for(user)
    else
      flash[:notice] = 'Wrong Password!'
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

  private

  def redirect_path_for(user)
    user.type.pluralize.to_sym
  end

  def session_params
    params.require(:session).permit(:email, :password)
  end

end
