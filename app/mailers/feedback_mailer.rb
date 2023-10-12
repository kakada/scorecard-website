# frozen_string_literal: true

class FeedbackMailer < ApplicationMailer
  def notify(feedback)
    @feedback = feedback

    mail(to: ENV["SUPPORT_EMAIL"], subject: "Scorecard Website Feedback")
  end
end
