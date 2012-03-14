class HomeController < ApplicationController


  def index  
    @pets = Pet.all
  end

  def about
  end

  def contact
  end

end
