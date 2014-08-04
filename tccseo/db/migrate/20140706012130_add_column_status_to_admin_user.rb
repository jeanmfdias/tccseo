class AddColumnStatusToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :status, :integer
  end
end
