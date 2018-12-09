require 'rails_helper'

RSpec.describe SubSector, type: :model do
  it { should validate_presence_of(:main_sector_id) }
  it { should validate_presence_of(:sub_sector_name) }

  it { should belong_to(:main_sector) }
end
