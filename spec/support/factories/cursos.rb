# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :curso do
    nome "MyString"
    descricao "MyText"
    situacao 1
  end
end
