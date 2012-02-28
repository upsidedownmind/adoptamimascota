class SheltersController < ApplicationController
  # GET /shelters
  # GET /shelters.json
  def index
    @shelters = Shelter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shelters }
    end
  end

  # GET /shelters/1
  # GET /shelters/1.json
  def show
    @shelter = Shelter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shelter }
    end
  end

  # GET /shelters/new
  # GET /shelters/new.json
  def new
    @shelter = Shelter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shelter }
    end
  end

  # GET /shelters/1/edit
  def edit
    @shelter = Shelter.find(params[:id])
  end

  # POST /shelters
  # POST /shelters.json
  def create
    @shelter = Shelter.new(params[:shelter])

    respond_to do |format|
      if @shelter.save
        format.html { redirect_to @shelter, notice: 'Shelter was successfully created.' }
        format.json { render json: @shelter, status: :created, location: @shelter }
      else
        format.html { render action: "new" }
        format.json { render json: @shelter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shelters/1
  # PUT /shelters/1.json
  def update
    @shelter = Shelter.find(params[:id])

    respond_to do |format|
      if @shelter.update_attributes(params[:shelter])
        format.html { redirect_to @shelter, notice: 'Shelter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shelter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shelters/1
  # DELETE /shelters/1.json
  def destroy
    @shelter = Shelter.find(params[:id])
    @shelter.destroy

    respond_to do |format|
      format.html { redirect_to shelters_url }
      format.json { head :no_content }
    end
  end
end
