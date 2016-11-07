Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:number", { :controller => "calculations", :action => "square_root" })
  get("/payment/:interest/:year/:total", { :controller => "calculations", :action => "loan" })
  get("/random/:first/:second/", { :controller => "calculations", :action => "random" })
  get("/square/:square_number", { :controller => "calculations", :action => "square" })

end
