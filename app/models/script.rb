class Script < ActiveRecord::Base

  has_one :physician
  has_one :patient

end
