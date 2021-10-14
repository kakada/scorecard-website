class Setting
  def self.analytics_valid?
    GoogleAnalytics.valid_tracker? && Rails.env.production?
  end
end
