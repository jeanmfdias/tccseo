class HomeController < ApplicationController
	before_filter :get2Categorias

	def index
		@ativo = 'home'
		@artigo = Artigo.where(status: 1).last
		@artigos = Artigo.where(status: 1).order(created_at: :desc)
	end

	def sobre
		@ativo = 'about'
	end

	def sitemap
		urls = [
              ["1.0", "http://www.tccseo.com.br", "daily"],
              ["0.5", "http://www.tccseo.com.br/calendario", "daily"],
              ["0.5", "http://www.tccseo.com.br/contato", "daily"],
            ]

        categorias = Categoria.where(status: 1)
        artigos = Artigo.where(status: 1)
        calendarios = Calendario.all

        @output = Array.new

        urls.each do |u|
        	@output << [u[1], u[2], u[0]]
        end

        url_base = 'http://www.tccseo.com.br/'

        categorias.each do |c|
        	@output << [url_base.to_s + c.url_amigavel , 'daily', '0.8']
        end

        artigos.each do |a|
        	@output << [url_base.to_s + a.categoria.url_amigavel + '/' + a.url_amigavel , 'daily', '0.65']
        end

        calendarios.each do |c|
        	@output << [url_base.to_s + 'evento' + '/' + c.url_amigavel, 'daily', '0.5']
        end

        headers['Content-Type'] = 'application/xml'

        render 'sitemap', :layout => false
	end

end
