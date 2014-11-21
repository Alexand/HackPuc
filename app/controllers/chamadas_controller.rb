class ChamadasController < ApplicationController
  before_action :set_chamada, only: [:show, :edit, :update, :destroy]

  # GET /chamadas
  # GET /chamadas.json
  def index
    @chamadas = Chamada.all
    respond_to do |format|
      format.html
      format.json { render json: @chamadas }
    end
  end

  # GET /chamadas/1
  # GET /chamadas/1.json
  def show
  end

  # GET /chamadas/new
  def new
    @chamada = Chamada.new
  end

  # GET /chamadas/1/edit
  def edit
  end

  # POST /chamadas
  # POST /chamadas.json
  def create
    @chamada = Chamada.new(chamada_params)

    respond_to do |format|
      if @chamada.save
        format.html { redirect_to @chamada, notice: 'Chamada was successfully created.' }
        format.json { render :show, status: :created, location: @chamada }
      else
        format.html { render :new }
        format.json { render json: @chamada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chamadas/1
  # PATCH/PUT /chamadas/1.json
  def update
    respond_to do |format|
      if @chamada.update(chamada_params)
        format.html { redirect_to @chamada, notice: 'Chamada was successfully updated.' }
        format.json { render :show, status: :ok, location: @chamada }
      else
        format.html { render :edit }
        format.json { render json: @chamada.errors, status: :unprocessable_entity }
      end
    end
  end

  def postUpdate
    @chamada = Chamada.find(params[:chamada][:id])
    @chamada.status = params[:chamada][:status]
    respond_to do |format|
      if @chamada.update(chamada_params)
        format.json { render :show, status: :ok, location: @chamada }
      else
        format.json { render json: @chamada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chamadas/1
  # DELETE /chamadas/1.json
  def destroy
    @chamada.destroy
    respond_to do |format|
      format.html { redirect_to chamadas_url, notice: 'Chamada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def porStatus
    @chamadas = Chamada.where(status: params[:status]).order('created_at DESC')

    respond_to do |format|
      format.json {render json: @chamadas.to_a}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chamada
      @chamada = Chamada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chamada_params
      params.require(:chamada).permit(:linha, :parada_id, :descricao, :user_id, :status)
    end
end
