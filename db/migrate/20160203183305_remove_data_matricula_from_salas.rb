class RemoveDataMatriculaFromSalas < ActiveRecord::Migration
  def change
    remove_column :salas, :data_matricula
  end
end
