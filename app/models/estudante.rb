# == Schema Information
#
# Table name: estudantes
#
#  id                 :integer          not null, primary key
#  nome               :string(255)
#  numero_de_registro :string(255)
#  situacao           :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class Estudante < ActiveRecord::Base
  validates_presence_of :nome, :numero_de_registro, :situacao
end
