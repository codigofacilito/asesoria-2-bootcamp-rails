class CategoryTransaction < ApplicationRecord
  belongs_to :category
  belongs_to :app_transaction, class_name: "Transaction", foreign_key: "transaction_id"
end
