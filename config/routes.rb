Rails.application.routes.draw do
  	scope "/admin" do 
	    resources :banners  
	    get "/home", as: "get_home_admin", to: "home#get_home_admin"
	    put "/home", as: "post_home_admin", to: "home#post_home_admin"

	    get "/about", as: "get_about_admin", to: "about#get_about_admin"
	    put "/about", as: "post_about_admin", to: "about#post_about_admin"
  	end
	mount SevenGallery::Engine, at: "/"
  
end
