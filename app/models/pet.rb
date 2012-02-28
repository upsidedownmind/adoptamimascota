class Pet < ActiveRecord::Base

  has_one :specie
  has_one :breed
  has_one :status
  has_one :owner

end
