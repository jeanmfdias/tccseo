class AddColumnMetaTituloToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :meta_titulo, :string
  end
end
