class AddColumnLocalToCalendario < ActiveRecord::Migration
  def change
    add_column :calendarios, :local, :string
  end
end
