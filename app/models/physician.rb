class Physician < ActiveRecord::Base

  has_one :user, as: :profile
  has_many :scripts

end
