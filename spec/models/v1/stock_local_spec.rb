require 'rails_helper'

RSpec.describe StockLocal, type: :model do
  it { should validate_presence_of(:sec_name) }
  it { should validate_presence_of(:sec_code) }
  it { should validate_presence_of(:sub_sector_id) }
  it { should validate_presence_of(:shares_in_issue) }
  it { should validate_presence_of(:contact) }
  it { should validate_presence_of(:outstanding_shares) }
  it { should validate_presence_of(:registrar) }
  
end
