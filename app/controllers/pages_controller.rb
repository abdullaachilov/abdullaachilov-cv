class PagesController < ApplicationController
  def home
    expires_in 1.hour, public: true
  end

  def temp
    render layout: "temp"
  end

  def temp1
    render layout: "temp1"
  end

  def temp2
    render layout: "temp2"
  end

  def temp3
    render layout: "temp3"
  end

  def temp4
    render layout: "temp4"
  end
end
