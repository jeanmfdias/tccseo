class ArtigosController < ApplicationController
	before_filter :get2Categorias

	def show
		@ativo = "category"
		@artigo = Artigo.where(status: 1, url_amigavel: params[:artigo]).last
		@categoria = Categoria.where(status: 1, url_amigavel: params[:categoria]).last
	end

end
