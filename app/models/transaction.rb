class Transaction < ApplicationRecord
  belongs_to :account
  counter_culture :account, column_name: 'total', delta_column: 'amount'

  attr_accessor :category_strings
  before_save :set_categories
  after_save :save_categories
  
  def set_categories
    @string_categories = self.category_strings.split(",")
  end

  def save_categories
    @string_categories.each do |category_string|
      category = Category.first_or_create(name: category_string, account: self.account)
      CategoryTransaction.create(category: category, app_transaction: self)
    end
  end

end