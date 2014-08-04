class CreateArtigos < ActiveRecord::Migration
  def change
    create_table :artigos do |t|
      t.string :titulo
      t.text :conteudo
      t.string :imagem
      t.string :titulo_imagem
      t.string :meta_titulo
      t.string :meta_descricao
      t.string :titulo_link
      t.references :categoria, index: true
      t.references :admin_user, index: true
      t.string :url_amigavel
      t.integer :status

      t.timestamps
    end
  end
end
