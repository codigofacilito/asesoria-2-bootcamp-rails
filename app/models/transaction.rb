# == Schema Information
#
# Table name: transactions
#
#  id         :integer          not null, primary key
#  amount     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  account_id :integer          not null
#
# Indexes
#
#  index_transactions_on_account_id  (account_id)
#
# Foreign Keys
#
#  account_id  (account_id => accounts.id)
#
class Transaction < ApplicationRecord
  belongs_to :account
  has_many :category_transactions
  has_many :categories, through: :category_transactions
  counter_culture :account, column_name: 'total', delta_column: 'amount'
  

  attr_accessor :category_strings
  before_save :set_categories
  after_save :save_categories
  
  def set_categories
    return if self.category_strings.nil? || self.category_strings.empty?
    @string_categories = self.category_strings.split(",")
  end

  def save_categories
    return if @string_categories.nil? || @string_categories.empty?
    @string_categories.each do |category_string|
      category = Category.find_or_create_by(name: category_string, account: self.account)
      CategoryTransaction.create(category: category, app_transaction: self)
    end
  end

end
