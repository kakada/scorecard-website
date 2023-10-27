# == Schema Information
#
# Table name: feedbacks
#
#  id         :integer          not null, primary key
#  email      :string
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Feedback < ApplicationRecord
  # Validation
  validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }, allow_blank: true
  validates :message, presence: true

  # Callback
  after_create :notify_supporter

  private
    def notify_supporter
      FeedbackMailer.notify(self).deliver_now
    end
end
