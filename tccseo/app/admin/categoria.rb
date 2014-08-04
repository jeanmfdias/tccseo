ActiveAdmin.register Categoria do

	index do
		column :nome
		column :url_amigavel
		column :status
		actions
	end

	form do |f|
		f.inputs "Categoria" do
			f.input :nome
			f.input :descricao, as: :html_editor
			f.input :status, as: :radio, collection: [["Ativo", 1], ["Inativo", 0]]
		end
		f.inputs "SEO" do
			f.input :url_amigavel
			f.input :titulo_link
			f.input :meta_titulo
			f.input :meta_descricao
		end
		f.actions
	end

  permit_params :nome, :descricao, :url_amigavel, :meta_titulo, :meta_descricao, :titulo_link, :status
  
end
