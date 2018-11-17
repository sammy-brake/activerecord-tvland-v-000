class Actor < ActiveRecord::Base
  has_many :shows
  has_many :characters, through: :shows

  def full_name
    self.first_name.last_name
    
  end

  def list_roles
    self.characters
  end
end
