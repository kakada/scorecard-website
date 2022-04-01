# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :set_gon_variable

  def index
  end

  private
    # Set variable to use in js
    def set_gon_variable
      gon.push({
        cookiePolicyPath: cookie_policy_path,
      })
    end
end
