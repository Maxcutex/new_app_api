FactoryBot.define do
  factory :stock_local do
    sec_code { "MyString" }
    sec_name { "MyString" }
    exchange_code { "MyString" }
    asset_class_coce { "MyString" }
    contact { "MyString" }
    description { "MyString" }
    tier_code { "MyString" }
    par_value { "MyString" }
    list_date { "2018-10-26" }
    outstanding_shares { "9.99" }
    grp_code { "MyString" }
    registrar { "MyString" }
    address_1 { "MyString" }
    address_2 { "MyString" }
    address_3 { "MyString" }
    state_code { "MyString" }
    website { "MyString" }
    email { "MyString" }
    gsm { "MyString" }
    land_tel { "MyString" }
    fax_no { "MyString" }
    regis_close { "MyString" }
    year_end { "MyString" }
    logo { "MyString" }
    shares_in_issue { 1 }
    capitalization { 1 }
    view_count { 1 }
    association :industry, factory: :industry
    association :sub_sector, factory: :sub_sector
  end
end
