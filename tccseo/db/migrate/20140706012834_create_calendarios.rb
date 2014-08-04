class CreateCalendarios < ActiveRecord::Migration
  def change
    create_table :calendarios do |t|
      t.string :titulo_evento
      t.date :data
      t.time :horario
      t.text :detalhes
      t.string :url_amigavel
      t.string :meta_titulo
      t.string :meta_descricao
      t.string :titulo_link
      t.integer :status

      t.timestamps
    end
  end
end
