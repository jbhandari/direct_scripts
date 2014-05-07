class Patient < ActiveRecord::Base

  has_one :user, as: :profile
  has_many :scripts

end
