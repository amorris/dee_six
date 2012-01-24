class CustodiansController < ApplicationController
  # GET /custodians
  # GET /custodians.json
  def index
    @custodians = Custodian.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @custodians }
    end
  end

  # GET /custodians/1
  # GET /custodians/1.json
  def show
    @custodian = Custodian.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @custodian }
    end
  end

  # GET /custodians/new
  # GET /custodians/new.json
  def new
    @custodian = Custodian.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @custodian }
    end
  end

  # GET /custodians/1/edit
  def edit
    @custodian = Custodian.find(params[:id])
  end

  # POST /custodians
  # POST /custodians.json
  def create
    @custodian = Custodian.new(params[:custodian])

    respond_to do |format|
      if @custodian.save
        format.html { redirect_to @custodian, notice: 'Custodian was successfully created.' }
        format.json { render json: @custodian, status: :created, location: @custodian }
      else
        format.html { render action: "new" }
        format.json { render json: @custodian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /custodians/1
  # PUT /custodians/1.json
  def update
    @custodian = Custodian.find(params[:id])

    respond_to do |format|
      if @custodian.update_attributes(params[:custodian])
        format.html { redirect_to @custodian, notice: 'Custodian was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @custodian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custodians/1
  # DELETE /custodians/1.json
  def destroy
    @custodian = Custodian.find(params[:id])
    @custodian.destroy

    respond_to do |format|
      format.html { redirect_to custodians_url }
      format.json { head :ok }
    end
  end
end
