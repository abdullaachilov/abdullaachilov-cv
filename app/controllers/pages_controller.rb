class PagesController < ApplicationController
  def home
    expires_in 1.hour, public: true
  end

  def temp
    render layout: "temp"
  end
end
