class FormulariesController < ApplicationController
  # GET /formularies
  # GET /formularies.json
  def index
    @formularies = Formulary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @formularies }
    end
  end

  # GET /formularies/1
  # GET /formularies/1.json
  def show
    @formulary = Formulary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @formulary }
    end
  end

  # GET /formularies/new
  # GET /formularies/new.json
  def new
    @formulary = Formulary.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @formulary }
    end
  end

  # GET /formularies/1/edit
  def edit
    @formulary = Formulary.find(params[:id])
  end

  # POST /formularies
  # POST /formularies.json
  def create
    @formulary = Formulary.new(params[:formulary])

    respond_to do |format|
      if @formulary.save
        format.html { redirect_to @formulary, notice: 'Formulario creado exitosamente.' }
        format.json { render json: @formulary, status: :created, location: @formulary }
      else
        format.html { render action: "new" }
        format.json { render json: @formulary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /formularies/1
  # PUT /formularies/1.json
  def update
    @formulary = Formulary.find(params[:id])

    respond_to do |format|
      if @formulary.update_attributes(params[:formulary])
        format.html { redirect_to @formulary, notice: 'Formulario actualizado exitosamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @formulary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formularies/1
  # DELETE /formularies/1.json
  def destroy
    @formulary = Formulary.find(params[:id])
    @formulary.destroy

    respond_to do |format|
      format.html { redirect_to formularies_url }
      format.json { head :no_content }
    end
  end
end
