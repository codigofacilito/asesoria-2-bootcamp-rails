# == Schema Information
#
# Table name: messages
#
#  id          :integer          not null, primary key
#  target_date :date
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
