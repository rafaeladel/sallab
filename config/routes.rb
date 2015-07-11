Rails.application.routes.draw do

	concern :page_info do
		collection do
			get "/page_info", action: "get_page_info"
			put "/page_info", action: "post_page_info"
		end
  end

  get "/home", as: "frontend_home", to: "frontend/frontend_home#index"

  	scope "/admin" do
	    resources :banners
			resources :about_sections
			resources :product_sections, concerns: :page_info
			resources :origins
			resources :brands
			resources :tile_sizes
      resources :colors
			resources :products, concerns: :page_info
			resources :branches, concerns: :page_info
			resources :regions


			get "/home", as: "get_home_admin", to: "home#get_home_admin"
	    put "/home", as: "post_home_admin", to: "home#post_home_admin"
	    put "/home/page_info", as: "post_page_info_home", to: "home#post_page_info"
	    get "/about", as: "get_about_admin", to: "about#get_about_admin"
	    put "/about", as: "post_about_admin", to: "about#post_about_admin"
			put "/about/page_info", as: "post_page_info_about", to: "about#post_page_info"


			mount SevenGallery::Engine, at: "/"
			mount SevenPortfolio::Engine, at: "/news"
			mount SevenCareers::Engine, at: "/"
		end

end
