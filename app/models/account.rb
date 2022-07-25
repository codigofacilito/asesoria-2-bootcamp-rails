class Account < ApplicationRecord
  has_many :transactions
  has_many :categories
  accepts_nested_attributes_for :transactions
end
