class BreedsController < ApplicationController
  # GET /breeds
  # GET /breeds.json
  def index
    @breeds = Breed.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @breeds }
    end
  end

  # GET /breeds/1
  # GET /breeds/1.json
  def show
    @breed = Breed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @breed }
    end
  end

  # GET /breeds/new
  # GET /breeds/new.json
  def new
    @breed = Breed.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @breed }
    end
  end

  # GET /breeds/1/edit
  def edit
    @breed = Breed.find(params[:id])
  end

  # POST /breeds
  # POST /breeds.json
  def create
    @breed = Breed.new(params[:breed])

    respond_to do |format|
      if @breed.save
        format.html { redirect_to @breed, notice: 'Breed was successfully created.' }
        format.json { render json: @breed, status: :created, location: @breed }
      else
        format.html { render action: "new" }
        format.json { render json: @breed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /breeds/1
  # PUT /breeds/1.json
  def update
    @breed = Breed.find(params[:id])

    respond_to do |format|
      if @breed.update_attributes(params[:breed])
        format.html { redirect_to @breed, notice: 'Breed was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @breed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /breeds/1
  # DELETE /breeds/1.json
  def destroy
    @breed = Breed.find(params[:id])
    @breed.destroy

    respond_to do |format|
      format.html { redirect_to breeds_url }
      format.json { head :no_content }
    end
  end
end
