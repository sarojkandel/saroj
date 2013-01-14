class RamsController < ApplicationController
  # GET /rams
  # GET /rams.json
  def index
    @rams = Ram.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rams }
    end
  end

  # GET /rams/1
  # GET /rams/1.json
  def show
    @ram = Ram.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ram }
    end
  end

  # GET /rams/new
  # GET /rams/new.json
  def new
    @ram = Ram.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ram }
    end
  end

  # GET /rams/1/edit
  def edit
    @ram = Ram.find(params[:id])
  end

  # POST /rams
  # POST /rams.json
  def create
    @ram = Ram.new(params[:ram])

    respond_to do |format|
      if @ram.save
        format.html { redirect_to @ram, notice: 'Ram was successfully created.' }
        format.json { render json: @ram, status: :created, location: @ram }
      else
        format.html { render action: "new" }
        format.json { render json: @ram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rams/1
  # PUT /rams/1.json
  def update
    @ram = Ram.find(params[:id])

    respond_to do |format|
      if @ram.update_attributes(params[:ram])
        format.html { redirect_to @ram, notice: 'Ram was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rams/1
  # DELETE /rams/1.json
  def destroy
    @ram = Ram.find(params[:id])
    @ram.destroy

    respond_to do |format|
      format.html { redirect_to rams_url }
      format.json { head :no_content }
    end
  end
end
