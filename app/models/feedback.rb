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
