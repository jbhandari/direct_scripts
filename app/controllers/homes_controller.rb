class HomesController < ApplicationController
 before_action :goto_profile_index, if: :signed_in?

  def index
  end

  def show
    @user = current_user
  end

  private

   def goto_profile_index
    redirect_to index_for(current_user)
   end

   def index_for(user)
     user.type.pluralize.to_sym
   end

end
