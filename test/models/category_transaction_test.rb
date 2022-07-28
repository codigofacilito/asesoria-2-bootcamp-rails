# == Schema Information
#
# Table name: category_transactions
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  category_id    :integer          not null
#  transaction_id :integer          not null
#
# Indexes
#
#  index_category_transactions_on_category_id     (category_id)
#  index_category_transactions_on_transaction_id  (transaction_id)
#
# Foreign Keys
#
#  category_id     (category_id => categories.id)
#  transaction_id  (transaction_id => transactions.id)
#
require "test_helper"

class CategoryTransactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
