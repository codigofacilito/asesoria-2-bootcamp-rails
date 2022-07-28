# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  total      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Account < ApplicationRecord
  has_many :transactions
  has_many :categories
  accepts_nested_attributes_for :transactions
end
