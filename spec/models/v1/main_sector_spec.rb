require 'rails_helper'

RSpec.describe MainSector, type: :model do
  it { should validate_presence_of(:sector_name) }
  it { should have_many(:sub_sectors).dependent(:destroy) }
end
