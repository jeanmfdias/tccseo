class CategoriasController < ApplicationController
	before_filter :get2Categorias, :getRandArticles
	
	def index
		@ativo = "category"
		@categoria = Categoria.where(status: 1, url_amigavel: params[:categoria]).last
		@artigos = Artigo.where(status: 1, categoria_id: @categoria.id)
	end

end
