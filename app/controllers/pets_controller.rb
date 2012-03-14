class PetsController < ApplicationController

  before_filter :user_needed, :only => [:new, :edit, :create, :destroy]

  # GET /pets
  # GET /pets.json
  def index
    @pets = Pet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pets }
    end
  end

  # GET /pets/1
  # GET /pets/1.json
  def show
    @pet = Pet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pet }
    end
  end

  # GET /pets/new
  # GET /pets/new.json
  def new
    @pet = Pet.new
    @species_list = Specie.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pet }
    end
  end

  # GET /pets/1/edit
  def edit
    @pet = Pet.find(params[:id])
    
    if @pet.belongs_to? current_user
      @species_list = Specie.all
    else
      redirect_to @pet, notice: 'La mascota no te pertenece.'
    end

  end

  # POST /pets
  # POST /pets.json
  def create
    @pet = Pet.new(params[:pet])

    @species_list = Specie.all
    
    @pet.user = current_user
    @pet.creationDate = Date.new
    
    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: 'Mascota publicada!.' }
        format.json { render json: @pet, status: :created, location: @pet }
      else
        format.html { render action: "new" }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pets/1
  # PUT /pets/1.json
  def update
    @pet = Pet.find(params[:id])
    
    unless @pet.belongs_to? current_user
      redirect_to @pet, notice: 'La mascota no te pertenece.'
      return;
    end

    @species_list = Specie.all
    
    respond_to do |format|
      if @pet.update_attributes(params[:pet])
        format.html { redirect_to @pet, notice: 'Mascota modificada.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @pet = Pet.find(params[:id])

    respond_to do |format|
      if @pet.belong_to? current_user
        @pet.destroy
      
        format.html { redirect_to pets_url, :notice => 'Mascota Eliminada.' }
        format.json { head :no_content }
      else

        format.html { redirect_to @pet, notice: 'La mascota no te pertenece.' }
        format.json { head :no_content }
      end
    end

  end
end
