class UserStatesController < ApplicationController
  load_and_authorize_resource
  # GET /user_states
  # GET /user_states.json
  def index
    @user_states = UserState.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_states }
    end
  end

  # GET /user_states/1
  # GET /user_states/1.json
  def show
    @user_state = UserState.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_state }
    end
  end

  # GET /user_states/new
  # GET /user_states/new.json
  def new
    @user_state = UserState.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_state }
    end
  end

  # GET /user_states/1/edit
  def edit
    @user_state = UserState.find(params[:id])
  end

  # POST /user_states
  # POST /user_states.json
  def create
    @user_state = UserState.new(params[:user_state])

    respond_to do |format|
      if @user_state.save
        format.html { redirect_to @user_state, notice: 'Estado de usuario creado exitosamente.' }
        format.json { render json: @user_state, status: :created, location: @user_state }
      else
        format.html { render action: "nuevo" }
        format.json { render json: @user_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_states/1
  # PUT /user_states/1.json
  def update
    @user_state = UserState.find(params[:id])

    respond_to do |format|
      if @user_state.update_attributes(params[:user_state])
        format.html { redirect_to @user_state, notice: 'Estado de usuario actualizado exitosamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "editar" }
        format.json { render json: @user_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_states/1
  # DELETE /user_states/1.json
  def destroy
    @user_state = UserState.find(params[:id])
    @user_state.destroy

    respond_to do |format|
      format.html { redirect_to user_states_url }
      format.json { head :no_content }
    end
  end
end
