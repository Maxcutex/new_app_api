FactoryBot.define do
  factory :sub_sector do
    sub_sector_name { "MyString" }
    association :main_sector, factory: :main_sector
  end
end
