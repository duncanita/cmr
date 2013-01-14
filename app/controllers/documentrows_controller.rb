class DocumentrowsController < ApplicationController
  # GET /documentrows
  # GET /documentrows.json
  def index
    @documentrows = Documentrow.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @documentrows }
    end
  end

  # GET /documentrows/1
  # GET /documentrows/1.json
  def show
    @documentrow = Documentrow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @documentrow }
    end
  end

  # GET /documentrows/new
  # GET /documentrows/new.json
  def new
    @documentrow = Documentrow.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @documentrow }
    end
  end

  # GET /documentrows/1/edit
  def edit
    @documentrow = Documentrow.find(params[:id])
  end

  # POST /documentrows
  # POST /documentrows.json
  def create
    @documentrow = Documentrow.new(params[:documentrow])

    respond_to do |format|
      if @documentrow.save
        format.html { redirect_to @documentrow, notice: 'Documentrow was successfully created.' }
        format.json { render json: @documentrow, status: :created, location: @documentrow }
      else
        format.html { render action: "new" }
        format.json { render json: @documentrow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /documentrows/1
  # PUT /documentrows/1.json
  def update
    @documentrow = Documentrow.find(params[:id])

    respond_to do |format|
      if @documentrow.update_attributes(params[:documentrow])
        format.html { redirect_to @documentrow, notice: 'Documentrow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @documentrow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documentrows/1
  # DELETE /documentrows/1.json
  def destroy
    @documentrow = Documentrow.find(params[:id])
    @documentrow.destroy

    respond_to do |format|
      format.html { redirect_to documentrows_url }
      format.json { head :no_content }
    end
  end
end
