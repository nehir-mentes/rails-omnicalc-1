class ZebraController < ApplicationController
  
  def homepage
    render({:template => "zebra/homepage"})
  end

end
