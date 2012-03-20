class SpeciesController < ApplicationController
  # GET /species
  # GET /species.json
  def index
    @species = Specie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @species }
    end
  end

  # GET /species/1
  # GET /species/1.json
  def show
    @species = Specie.find(params[:id])

    @pets = Pet.where(:specie_id => @species).all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: {:secie => @species, :pets => @pets } }
    end
  end

  
end
