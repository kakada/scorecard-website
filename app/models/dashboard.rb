class Dashboard
  def self.url
    return ENV["DASHBOARD_URL_EN"] if I18n.locale.to_s == "en"

    ENV["DASHBOARD_URL_KM"]
  end
end
