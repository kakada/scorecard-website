class Setting
  def self.analytics_valid?
    GoogleAnalytics.valid_tracker? && Rails.env.production?
  end

  def self.visit_duration
    (ENV.fetch("VISIT_DURATION_MINUTE") { 30 }).to_i.minutes
  end
end
