class AddColumnTituloLinkToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :titulo_link, :string
  end
end
