class BirdsController < ApplicationController
  
  load_and_authorize_resource
  
  # GET /birds
  # GET /birds.json
  def index
    @birds = Bird.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @birds }
    end
  end

  # GET /birds/1
  # GET /birds/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bird }
    end
  end

  # GET /birds/new
  # GET /birds/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bird }
    end
  end

  # GET /birds/1/edit
  def edit
  end

  # POST /birds
  # POST /birds.json
  def create
    respond_to do |format|
      if @bird.save
        format.html { redirect_to @bird, notice: 'Bird was successfully created.' }
        format.json { render json: @bird, status: :created, location: @bird }
      else
        format.html { render action: "new" }
        format.json { render json: @bird.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /birds/1
  # PUT /birds/1.json
  def update
    respond_to do |format|
      if @bird.update_attributes(params[:bird])
        format.html { redirect_to @bird, notice: 'Bird was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bird.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /birds/1
  # DELETE /birds/1.json
  def destroy
    @bird.destroy
    respond_to do |format|
      format.html { redirect_to birds_url }
      format.json { head :no_content }
    end
  end
end
