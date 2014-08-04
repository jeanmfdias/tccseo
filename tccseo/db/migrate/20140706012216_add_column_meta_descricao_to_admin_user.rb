class AddColumnMetaDescricaoToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :meta_descricao, :string
  end
end
