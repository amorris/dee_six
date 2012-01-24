class InventoryTypesController < ApplicationController
  # GET /inventory_types
  # GET /inventory_types.json
  def index
    @inventory_types = InventoryType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inventory_types }
    end
  end

  # GET /inventory_types/1
  # GET /inventory_types/1.json
  def show
    @inventory_type = InventoryType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inventory_type }
    end
  end

  # GET /inventory_types/new
  # GET /inventory_types/new.json
  def new
    @inventory_type = InventoryType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inventory_type }
    end
  end

  # GET /inventory_types/1/edit
  def edit
    @inventory_type = InventoryType.find(params[:id])
  end

  # POST /inventory_types
  # POST /inventory_types.json
  def create
    @inventory_type = InventoryType.new(params[:inventory_type])

    respond_to do |format|
      if @inventory_type.save
        format.html { redirect_to @inventory_type, notice: 'Inventory type was successfully created.' }
        format.json { render json: @inventory_type, status: :created, location: @inventory_type }
      else
        format.html { render action: "new" }
        format.json { render json: @inventory_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inventory_types/1
  # PUT /inventory_types/1.json
  def update
    @inventory_type = InventoryType.find(params[:id])

    respond_to do |format|
      if @inventory_type.update_attributes(params[:inventory_type])
        format.html { redirect_to @inventory_type, notice: 'Inventory type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @inventory_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_types/1
  # DELETE /inventory_types/1.json
  def destroy
    @inventory_type = InventoryType.find(params[:id])
    @inventory_type.destroy

    respond_to do |format|
      format.html { redirect_to inventory_types_url }
      format.json { head :ok }
    end
  end
end
