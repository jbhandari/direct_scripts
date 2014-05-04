class User < ActiveRecord::Base

  belongs_to :profile, polymorphic: true
  validates :email, uniqueness: { case_sensitive: false, message: 'has been used'}

  def profile_created?
    profile_type
  end

  def type
    profile_type.downcase
  end

end
