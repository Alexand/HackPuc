class TiposContatosController < ApplicationController
  before_action :set_tipos_contato, only: [:show, :edit, :update, :destroy]

  # GET /tipos_contatos
  # GET /tipos_contatos.json
  def index
    @tipos_contatos = TiposContato.all
  end

  # GET /tipos_contatos/1
  # GET /tipos_contatos/1.json
  def show
  end

  # GET /tipos_contatos/new
  def new
    @tipos_contato = TiposContato.new
  end

  # GET /tipos_contatos/1/edit
  def edit
  end

  # POST /tipos_contatos
  # POST /tipos_contatos.json
  def create
    @tipos_contato = TiposContato.new(tipos_contato_params)

    respond_to do |format|
      if @tipos_contato.save
        format.html { redirect_to @tipos_contato, notice: 'Tipos contato was successfully created.' }
        format.json { render :show, status: :created, location: @tipos_contato }
      else
        format.html { render :new }
        format.json { render json: @tipos_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_contatos/1
  # PATCH/PUT /tipos_contatos/1.json
  def update
    respond_to do |format|
      if @tipos_contato.update(tipos_contato_params)
        format.html { redirect_to @tipos_contato, notice: 'Tipos contato was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipos_contato }
      else
        format.html { render :edit }
        format.json { render json: @tipos_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_contatos/1
  # DELETE /tipos_contatos/1.json
  def destroy
    @tipos_contato.destroy
    respond_to do |format|
      format.html { redirect_to tipos_contatos_url, notice: 'Tipos contato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipos_contato
      @tipos_contato = TiposContato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipos_contato_params
      params.require(:tipos_contato).permit(:descricao)
    end
end
