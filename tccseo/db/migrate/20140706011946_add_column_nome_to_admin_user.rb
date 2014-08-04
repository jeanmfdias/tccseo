class AddColumnNomeToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :nome, :string
  end
end
