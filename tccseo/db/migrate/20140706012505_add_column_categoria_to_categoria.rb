class AddColumnCategoriaToCategoria < ActiveRecord::Migration
  def change
    add_reference :categoria, :categoria, index: true
  end
end
