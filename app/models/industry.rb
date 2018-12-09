# frozen_string_literal: true

# module Industry
class Industry < ApplicationRecord
  has_many :stock_locals

  validates_presence_of :industry_name, :exchange_code
end
