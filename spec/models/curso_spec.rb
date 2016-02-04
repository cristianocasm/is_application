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

require 'rails_helper'

RSpec.describe Curso, :type => :model do
  it { should validate_presence_of(:nome) }
  it { should validate_presence_of(:descricao) }
  it { should validate_presence_of(:situacao) }
  it { should have_many(:salas) }
  it { should have_many(:estudantes).through(:salas) }
end
