class Pet < ActiveRecord::Base

  validates :name, :presence => true
  validates :specie, :presence => true
  validates :user, :presence => true
  validates :description, :presence => true

  #has_one :breed
  has_one :status

  belongs_to :user
  belongs_to :specie

  has_attached_file :picture,
    :styles => {
    :thumb  => "100x100",
    :medium => "200x200",
    :large => "600x400"
  }

  def belongs_to? (other_user)
    
    return user == other_user

  end

end
