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
class Message < ApplicationRecord
  has_one_attached :image
  def next
    Message.where("target_date > ?", target_date).order("target_date ASC").first
  end
end
