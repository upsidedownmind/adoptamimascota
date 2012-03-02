class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password

  has_many :pets
  has_many :profiles

  validates :password, :presence => { :on => :create }
  validates :email, :presence => true,  :email => true, :uniqueness => { :message => "La direccion de correo ya se encuentra registrada.", :case_sensitive => false}

end
