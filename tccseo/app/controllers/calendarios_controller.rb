class CalendariosController < ApplicationController
	before_filter :get2Categorias

	def index
		@ativo = "calendar"
		@eventos = Calendario.order(data: :asc)
	end

	def show
		@ativo = "calendar"
		@evento = Calendario.where(url_amigavel: params[:titulo]).last
	end

end
