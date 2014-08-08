module ApplicationHelper

	def root_url
		if ENV['RAILS_ENV']=='production'
			'http://www.tccseo.com.br'
		elsif ENV['RAILS_ENV']=='development'
			'http://127.0.0.1:3000'
		end
	end

end
