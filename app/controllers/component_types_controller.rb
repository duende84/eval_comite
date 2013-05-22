class ComponentTypesController < ApplicationController
  # GET /component_types
  # GET /component_types.json
  def index
    @component_types = ComponentType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @component_types }
    end
  end

  # GET /component_types/1
  # GET /component_types/1.json
  def show
    @component_type = ComponentType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @component_type }
    end
  end

  # GET /component_types/new
  # GET /component_types/new.json
  def new
    @component_type = ComponentType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @component_type }
    end
  end

  # GET /component_types/1/edit
  def edit
    @component_type = ComponentType.find(params[:id])
  end

  # POST /component_types
  # POST /component_types.json
  def create
    @component_type = ComponentType.new(params[:component_type])

    respond_to do |format|
      if @component_type.save
        format.html { redirect_to @component_type, notice: 'Tipo de componente creado exitosamente.' }
        format.json { render json: @component_type, status: :created, location: @component_type }
      else
        format.html { render action: "new" }
        format.json { render json: @component_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /component_types/1
  # PUT /component_types/1.json
  def update
    @component_type = ComponentType.find(params[:id])

    respond_to do |format|
      if @component_type.update_attributes(params[:component_type])
        format.html { redirect_to @component_type, notice: 'Tipo de componente actualizado exitosamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @component_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /component_types/1
  # DELETE /component_types/1.json
  def destroy
    @component_type = ComponentType.find(params[:id])
    @component_type.destroy

    respond_to do |format|
      format.html { redirect_to component_types_url }
      format.json { head :no_content }
    end
  end
end
