class PublicationsController  < ApplicationController
  
  load_and_authorize_resource
  # GET /publications/new
  # GET /publications/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @publication }
    end
  end
  
  
  def index
    @publications = Publication.all
    respond_to do |format|
      format.html
      format.json { render json: PublicationTable.new(view_context) }
    end
  end
  
  
  def show
  end
  
  # POST /publications.json
  # POST /publications.json
  def create
    respond_to do |format|
      if @publication.save
        format.html { redirect_to @publication, notice: 'Published Record was successfully created.' }
        format.json { render json: @publication, status: :created, location: @publication }
      else
        format.html { render action: "new" }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # GET /publications/1/edit
  def edit
  end
  
  # PUT /publications/1
  # PUT /publications/1.json
  def update
    respond_to do |format|
      if @publication.update_attributes(params[:publication])
        format.html { redirect_to @publication, notice: 'Publication was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /records/1
  # DELETE /records/1.json
  def destroy
    @publication.destroy
    respond_to do |format|
      format.html { redirect_to publications_url }
      format.json { head :no_content }
    end
  end
  
  
end
