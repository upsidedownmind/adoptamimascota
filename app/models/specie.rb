class Specie < ActiveRecord::Base
  validates :name,  :presence => true

  has_many :pets

  
end
