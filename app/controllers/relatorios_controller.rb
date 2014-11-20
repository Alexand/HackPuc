class RelatoriosController < ApplicationController
  def index
  	@paradas = Parada.all
  end
end
