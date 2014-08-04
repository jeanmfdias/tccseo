ActiveAdmin.register Artigo do

  index do
    column :titulo
    column :imagem do |i|
      image_tag i.imagem, width: "100"
    end
    column :categoria do |c|
      !c.categoria.blank? ? c.categoria.nome : nil
    end
    column "Autor" do |a|
      !a.admin_user.blank? ? a.admin_user.nome : nil
    end
    column :status do |s|
      s.status == 1 ? "Publicado" : "Não Publicado"
    end
    actions
  end

  form do |f|
    f.inputs "Artigo" do
      f.input :titulo
      f.input :conteudo, as: :html_editor
      f.input :imagem
      f.input :titulo_imagem
      f.input :categoria, as: :select, collection: Categoria.where(status: 1).map{|c| [c.nome, c.id]}
      f.input :admin_user, as: :select, collection: AdminUser.where(status: 1).map{|au| [au.nome, au.id]}, label: "Autor"
      f.input :status, as: :radio, collection: [["Publicado", 1], ["Não Publicado", 0]]
    end
    f.inputs "SEO" do
      f.input :meta_titulo
      f.input :meta_descricao
      f.input :url_amigavel
      f.input :titulo_link
    end
    f.actions
  end

  permit_params :titulo, :categoria_id, :admin_user_id, :conteudo, :imagem, :titulo_imagem, :meta_titulo, :meta_descricao, :titulo_link, :url_amigavel, :status
  
end
