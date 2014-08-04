class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :nome
      t.text :descricao
      t.string :url_amigavel
      t.string :meta_titulo
      t.string :meta_descricao
      t.string :titulo_link
      t.integer :status

      t.timestamps
    end
  end
end
