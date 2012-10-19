class PublicationsController  < ApplicationController
  
  # GET /publications/new
  # GET /publications/new.json
  def new
    @publication = Publication.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @publication }
    end
  end
  
  
  def index
    respond_to do |format|
      format.html
      format.json { render json: PublicationTable.new(view_context) }
    end
  end
  
  
  def show
    @publication = Publication.find(params[:id])
  end
  
  # POST /publications.json
  # POST /publications.json
  def create
    @publication = Publication.new(params[:publication])
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
    @publication = Publication.find(params[:id])
  end
  
  # PUT /publications/1
  # PUT /publications/1.json
  def update
    @publication = Publication.find(params[:id])
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
  
  
end
