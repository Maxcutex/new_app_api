require 'rails_helper'

RSpec.describe Industry, type: :model do
  it { should validate_presence_of(:industry_name) }
  it { should validate_presence_of(:exchange_code) }
end
