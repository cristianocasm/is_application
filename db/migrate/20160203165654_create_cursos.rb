class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nome
      t.text :descricao
      t.integer :situacao

      t.timestamps
    end
  end
end
