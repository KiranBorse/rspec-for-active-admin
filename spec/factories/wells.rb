# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :well do
    name "well name"
    number "#21312"
    area 'Some area'
    field
    customer
  end
end
