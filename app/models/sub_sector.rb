# frozen_string_literal: true

# model
class SubSector < ApplicationRecord
  belongs_to :main_sector
  validates_presence_of :sub_sector_name
  validates_presence_of :main_sector_id
end
