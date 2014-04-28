class User < ActiveRecord::Base

  belongs_to :profile, polymorphic: true

end
