class Script < ActiveRecord::Base
 before_create :generate_token

  belongs_to :physician
  belongs_to :patient

  def to_param
    token
  end

  def generate_token
    self.token = SecureRandom.hex(8)
    while Script.exists?(token: token)
      self.token = SecureRandom.hex(8)
    end
  end

end
