class HuequitosController < ApplicationController
  before_action :set_huequito, only: [:show, :edit, :update, :destroy]

  # GET /huequitos
  # GET /huequitos.json
  def index
    @huequitos = Huequito.all
  end

  # GET /huequitos/1
  # GET /huequitos/1.json
  def show
  end

  # GET /huequitos/new
  def new
    @huequito = Huequito.new
  end

  # GET /huequitos/1/edit
  def edit
  end

  # POST /huequitos
  # POST /huequitos.json
  def create
    @huequito = Huequito.new(huequito_params)

    respond_to do |format|
      if @huequito.save
        format.html { redirect_to @huequito, notice: 'Huequito was successfully created.' }
        format.json { render :show, status: :created, location: @huequito }
      else
        format.html { render :new }
        format.json { render json: @huequito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /huequitos/1
  # PATCH/PUT /huequitos/1.json
  def update
    respond_to do |format|
      if @huequito.update(huequito_params)
        format.html { redirect_to @huequito, notice: 'Huequito was successfully updated.' }
        format.json { render :show, status: :ok, location: @huequito }
      else
        format.html { render :edit }
        format.json { render json: @huequito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /huequitos/1
  # DELETE /huequitos/1.json
  def destroy
    @huequito.destroy
    respond_to do |format|
      format.html { redirect_to huequitos_url, notice: 'Huequito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_huequito
      @huequito = Huequito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def huequito_params
      params.require(:huequito).permit(:localidad, :direccion, :tamanio, :ranking)
    end
end
