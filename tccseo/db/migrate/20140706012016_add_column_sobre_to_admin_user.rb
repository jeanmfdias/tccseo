class AddColumnSobreToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :sobre, :text
  end
end
