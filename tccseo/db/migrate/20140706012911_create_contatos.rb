class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :email
      t.string :assunto
      t.text :mensagem

      t.timestamps
    end
  end
end
