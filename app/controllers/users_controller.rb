class UsersController < ApplicationController
# GET /users
  # GET /users.json
  def index
   
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def recordarpassxb

  end


  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  
  def create
    @user = User.new(params[:user])
    @user.enabled = true
    @user.creationDate = Date.new

    if @user.save
      redirect_to root_url, :notice => "Bienvenido " + @user.name + "! Ya estas registrado"
    else
      render "new"
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

end
