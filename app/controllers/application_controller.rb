class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :set_gon_variable

  private
    def set_locale
      session[:locale] = params[:locale] if params[:locale].present?

      I18n.locale = session[:locale] || I18n.default_locale
    end

    # Set variable to use in js
    def set_gon_variable
      gon.push({
        cookiePolicyPath: cookie_policy_path,
      })
    end

    def visitor_count
      @visitor_count ||= Ahoy::Visit.count
    end
    helper_method :visitor_count

    def feedback
      @feedback ||= Feedback.new
    end
    helper_method :feedback
end
