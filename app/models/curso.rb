# == Schema Information
#
# Table name: cursos
#
#  id         :integer          not null, primary key
#  nome       :string(255)
#  descricao  :text
#  situacao   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Curso < ActiveRecord::Base
  validates_presence_of :nome, :descricao, :situacao
end
