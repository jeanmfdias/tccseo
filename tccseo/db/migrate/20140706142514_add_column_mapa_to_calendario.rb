class AddColumnMapaToCalendario < ActiveRecord::Migration
  def change
    add_column :calendarios, :mapa, :text
  end
end
