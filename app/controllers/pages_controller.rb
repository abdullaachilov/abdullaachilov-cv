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

  def temp5
    render layout: "temp5"
  end

  def temp6
    render layout: "temp6"
  end

  def temp7
    render layout: "temp7"
  end

  def temp8
    render layout: "temp8"
  end

  def temp9
    render layout: "temp9"
  end
end
