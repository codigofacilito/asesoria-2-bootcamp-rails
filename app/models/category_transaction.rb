class CategoryTransaction < ApplicationRecord
  belongs_to :category
  belongs_to :app_transaction, class_name: "Transaction", foreign_key: "transaction_id"

  counter_culture :category, column_name: 'total', delta_column: 'amount'

  delegate :amount, to: :app_transaction

end
