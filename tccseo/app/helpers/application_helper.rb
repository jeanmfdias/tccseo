module ApplicationHelper

	def root_url
		if ENV['RAILS_ENV']=='production'
			'http://tccseo.herokuapp.com'
		elsif ENV['RAILS_ENV']=='development'
			'http://127.0.0.1:3000'
		end
	end

end
