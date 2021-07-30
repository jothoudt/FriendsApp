class FAmigosController < ApplicationController
  before_action :set_f_amigo, only: %i[ show edit update destroy ]

  # GET /f_amigos or /f_amigos.json
  def index
    @f_amigos = FAmigo.all
  end

  # GET /f_amigos/1 or /f_amigos/1.json
  def show
  end

  # GET /f_amigos/new
  def new
    @f_amigo = FAmigo.new
  end

  # GET /f_amigos/1/edit
  def edit
  end

  # POST /f_amigos or /f_amigos.json
  def create
    @f_amigo = FAmigo.new(f_amigo_params)

    respond_to do |format|
      if @f_amigo.save
        format.html { redirect_to @f_amigo, notice: "F amigo was successfully created." }
        format.json { render :show, status: :created, location: @f_amigo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @f_amigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_amigos/1 or /f_amigos/1.json
  def update
    respond_to do |format|
      if @f_amigo.update(f_amigo_params)
        format.html { redirect_to @f_amigo, notice: "F amigo was successfully updated." }
        format.json { render :show, status: :ok, location: @f_amigo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @f_amigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_amigos/1 or /f_amigos/1.json
  def destroy
    @f_amigo.destroy
    respond_to do |format|
      format.html { redirect_to f_amigos_url, notice: "F amigo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_amigo
      @f_amigo = FAmigo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def f_amigo_params
      params.require(:f_amigo).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
