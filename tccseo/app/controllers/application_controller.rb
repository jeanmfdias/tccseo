class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def get2Categorias
		@list_categorias = Categoria.where(status: 1)
		total = @list_categorias.count
		metade = (total / 2).to_i
		i = 1
		@list_categorias1 = Array.new
		@list_categorias2 = Array.new
		@list_categorias.each do |categoria|
			if i <= metade
				@list_categorias1 << categoria
			else
				@list_categorias2 << categoria
			end
			i = i + 1
		end
	end

	def getRandArticles
		@randArticles = Artigo.where(status: 1).sample(5)
	end

end
