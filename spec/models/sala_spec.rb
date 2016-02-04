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

require 'rails_helper'

RSpec.describe Sala, :type => :model do
  it { should belong_to(:curso) }
  it { should belong_to(:estudante) }
  it { should validate_presence_of(:curso) }
  it { should validate_presence_of(:estudante) }
end
