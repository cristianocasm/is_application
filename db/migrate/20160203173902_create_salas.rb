class CreateSalas < ActiveRecord::Migration
  def change
    create_table :salas do |t|
      t.integer :estudante_id
      t.integer :curso_id
      t.date :data_matricula

      t.timestamps
    end
    add_index :salas, :estudante_id
    add_index :salas, :curso_id
  end
end
