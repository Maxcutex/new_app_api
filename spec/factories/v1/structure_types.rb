FactoryBot.define do
  factory :structure_type do
    structure_type_name { "MyString" }
    description { "MyString" }
    parent_id { 1 }
    is_active { false }
  end
end
