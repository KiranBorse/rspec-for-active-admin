# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attachment do
    note "MyText"
    data_file_name "MyString"
    data_file_size 1
    data_content_type "MyString"
    data_updated_at "2011-12-29 13:00:15"
  end
end
