class AddColumnUrlAmigavelToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :url_amigavel, :string
  end
end
