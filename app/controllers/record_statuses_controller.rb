class RecordStatusesController < ApplicationController
  # GET /record_statuses
  # GET /record_statuses.json
  def index
    @record_statuses = RecordStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @record_statuses }
    end
  end

  # GET /record_statuses/1
  # GET /record_statuses/1.json
  def show
    @record_status = RecordStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @record_status }
    end
  end

  # GET /record_statuses/new
  # GET /record_statuses/new.json
  def new
    @record_status = RecordStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @record_status }
    end
  end

  # GET /record_statuses/1/edit
  def edit
    @record_status = RecordStatus.find(params[:id])
  end

  # POST /record_statuses
  # POST /record_statuses.json
  def create
    @record_status = RecordStatus.new(params[:record_status])

    respond_to do |format|
      if @record_status.save
        format.html { redirect_to @record_status, notice: 'Record status was successfully created.' }
        format.json { render json: @record_status, status: :created, location: @record_status }
      else
        format.html { render action: "new" }
        format.json { render json: @record_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /record_statuses/1
  # PUT /record_statuses/1.json
  def update
    @record_status = RecordStatus.find(params[:id])

    respond_to do |format|
      if @record_status.update_attributes(params[:record_status])
        format.html { redirect_to @record_status, notice: 'Record status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @record_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /record_statuses/1
  # DELETE /record_statuses/1.json
  def destroy
    @record_status = RecordStatus.find(params[:id])
    @record_status.destroy

    respond_to do |format|
      format.html { redirect_to record_statuses_url }
      format.json { head :no_content }
    end
  end
end
