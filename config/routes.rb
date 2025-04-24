Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "homepage"})

  get("/square/new", { :controller => "zebra", :action => "homepage"})

  get("/square/results", { :controller => "zebra", :action => "square"})

  get("/square_root/new", { :controller => "zebra", :action => "new_square_root"})

  get("/square_root/results", { :controller => "zebra", :action => "square_root"})

  get("/payment/new", { :controller => "zebra", :action => "new_payment"})

  get("/payment/results", { :controller => "zebra", :action => "payment"})

  get("/random/new", { :controller => "zebra", :action => "new_random"})

  get("/random/results", { :controller => "zebra", :action => "random"})

end
