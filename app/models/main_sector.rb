# frozen_string_literal: true

# model
class MainSector < ApplicationRecord
  has_many :sub_sectors, dependent: :destroy

  validates_presence_of :sector_name
end
