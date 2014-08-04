ActiveAdmin.register Calendario do

	index do
		column :titulo_evento
		column :data
		column :horario
		column :local
		column :status
		actions
	end

	form do |f|
		f.inputs "Envento" do
			f.input :titulo_evento
			f.input :data
			f.input :horario
			f.input :detalhes, as: :html_editor
			f.input :status, as: :radio, collection: [["Não Realizado", 1], ["Realizado", 0]]
			f.input :local
			f.input :mapa
		end
		f.inputs "SEO" do
			f.input :url_amigavel
			f.input :titulo_link
			f.input :meta_titulo
			f.input :meta_descricao
		end
		f.actions
	end

  permit_params :titulo_evento, :data, :horario, :detalhes, :url_amigavel, :meta_titulo, :meta_descricao, :status, :titulo_link, :local, :mapa
  
end
