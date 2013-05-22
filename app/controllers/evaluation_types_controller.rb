class EvaluationTypesController < ApplicationController
  # GET /evaluation_types
  # GET /evaluation_types.json
  def index
    @evaluation_types = EvaluationType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evaluation_types }
    end
  end

  # GET /evaluation_types/1
  # GET /evaluation_types/1.json
  def show
    @evaluation_type = EvaluationType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evaluation_type }
    end
  end

  # GET /evaluation_types/new
  # GET /evaluation_types/new.json
  def new
    @evaluation_type = EvaluationType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evaluation_type }
    end
  end

  # GET /evaluation_types/1/edit
  def edit
    @evaluation_type = EvaluationType.find(params[:id])
  end

  # POST /evaluation_types
  # POST /evaluation_types.json
  def create
    @evaluation_type = EvaluationType.new(params[:evaluation_type])

    respond_to do |format|
      if @evaluation_type.save
        format.html { redirect_to @evaluation_type, notice: 'Tipo de evaluacion creado exitosamente.' }
        format.json { render json: @evaluation_type, status: :created, location: @evaluation_type }
      else
        format.html { render action: "new" }
        format.json { render json: @evaluation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evaluation_types/1
  # PUT /evaluation_types/1.json
  def update
    @evaluation_type = EvaluationType.find(params[:id])

    respond_to do |format|
      if @evaluation_type.update_attributes(params[:evaluation_type])
        format.html { redirect_to @evaluation_type, notice: 'Tipo de evaluacion actualizado exitosamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evaluation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluation_types/1
  # DELETE /evaluation_types/1.json
  def destroy
    @evaluation_type = EvaluationType.find(params[:id])
    @evaluation_type.destroy

    respond_to do |format|
      format.html { redirect_to evaluation_types_url }
      format.json { head :no_content }
    end
  end
end
