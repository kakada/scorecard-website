class FeedbacksController < ApplicationController
  def create
    @feedback = Feedback.new(feedback_params)

    if verify_recaptcha(model: @feedback) && @feedback.save
      @feedback = Feedback.new

      flash.now[:notice] = I18n.t("feedback.send_successfully")
    else
      flash.now[:alert] = @feedback.errors.full_messages.join(', ')
    end
  end

  private
    def feedback_params
      params.require(:feedback).permit(:email, :message)
    end
end
