class PackagingsController < ApplicationController
  # GET /packagings
  # GET /packagings.json
  def index
    @packagings = Packaging.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @packagings }
    end
  end

  # GET /packagings/1
  # GET /packagings/1.json
  def show
    @packaging = Packaging.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @packaging }
    end
  end

  # GET /packagings/new
  # GET /packagings/new.json
  def new
    @packaging = Packaging.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @packaging }
    end
  end

  # GET /packagings/1/edit
  def edit
    @packaging = Packaging.find(params[:id])
  end

  # POST /packagings
  # POST /packagings.json
  def create
    @packaging = Packaging.new(params[:packaging])

    respond_to do |format|
      if @packaging.save
        format.html { redirect_to @packaging, notice: 'Packaging was successfully created.' }
        format.json { render json: @packaging, status: :created, location: @packaging }
      else
        format.html { render action: "new" }
        format.json { render json: @packaging.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /packagings/1
  # PUT /packagings/1.json
  def update
    @packaging = Packaging.find(params[:id])

    respond_to do |format|
      if @packaging.update_attributes(params[:packaging])
        format.html { redirect_to @packaging, notice: 'Packaging was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @packaging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packagings/1
  # DELETE /packagings/1.json
  def destroy
    @packaging = Packaging.find(params[:id])
    @packaging.destroy

    respond_to do |format|
      format.html { redirect_to packagings_url }
      format.json { head :no_content }
    end
  end
end
