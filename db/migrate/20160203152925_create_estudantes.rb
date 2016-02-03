class CreateEstudantes < ActiveRecord::Migration
  def change
    create_table :estudantes do |t|
      t.string :nome
      t.string :numero_de_registro
      t.integer :situacao

      t.timestamps
    end
  end
end
