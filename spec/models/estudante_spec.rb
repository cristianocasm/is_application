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

require 'rails_helper'

RSpec.describe Estudante, :type => :model do
  it { should respond_to(:nome) }
  it { should respond_to(:numero_de_registro) }
  it { should respond_to(:situacao) }
  it { should validate_presence_of(:nome) }
  it { should validate_presence_of(:numero_de_registro) }
  it { should validate_presence_of(:situacao) }
  it { should have_many(:salas) }
end
