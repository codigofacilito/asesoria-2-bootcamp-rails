class Message < ApplicationRecord
  def next
    Message.where("target_date > ?", target_date).order("target_date ASC").first
  end
end
