class Script < ActiveRecord::Base

  belongs_to :physician
  belongs_to :patient

end
