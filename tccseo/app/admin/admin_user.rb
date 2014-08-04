ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :nome, :status, :url_amigavel, :sobre, :meta_titulo, :meta_descricao, :titulo_link

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :nome
      f.input :email
      f.input :password
      f.input :password_confirmation
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

end
