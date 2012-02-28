class Specie < ActiveRecord::Base
  validates :name,  :presence => true
end
