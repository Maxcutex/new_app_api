# frozen_string_literal: true

# module stocklocal
class StockLocal < ApplicationRecord
  belongs_to :industry
  belongs_to :sub_sector
  validates_presence_of :sec_code, :sec_name, :shares_in_issue, :registrar
  validates_presence_of :sub_sector_id, :industry_id, :contact
  validates_presence_of :outstanding_shares
end
