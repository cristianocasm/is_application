# == Schema Information
#
# Table name: salas
#
#  id           :integer          not null, primary key
#  estudante_id :integer
#  curso_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Sala < ActiveRecord::Base
  belongs_to :curso
  belongs_to :estudante

  validates_presence_of :curso, :estudante
end
