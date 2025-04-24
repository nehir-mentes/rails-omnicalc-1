Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "homepage"})

  get("/square/new", { :controller => "zebra", :action => "homepage"})
end
