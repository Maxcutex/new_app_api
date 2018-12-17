FactoryBot.define do
  factory :structure do
    structure_name { "MyString" }
    structure_code { "MyString" }
    parent_id { 1 }
    comment { "MyString" }
    is_active { false }
    structure_type { nil }
  end
end
