Rails.application.routes.draw do
  root "frontend/frontend_home#index"
  get '/:locale' => "frontend/frontend_home#index"

  scope "(/:locale)", locale: /en|ar/ do
    get "/home", as: "frontend_home", to: "frontend/frontend_home#index"

    get "/about", as: "frontend_about", to: "frontend/frontend_about#index"

    get "/about/:slug", as: "frontend_about_section", to: "frontend/frontend_about_section#index"

    get "/product_sections/:slug",
        as: "frontend_product_sections",
        to: "frontend/frontend_product_section#index"

    get "/products/:id", as: "frontend_product", to: "frontend/frontend_product#index"

    get "/gallery", as: "frontend_gallery", to: "frontend/frontend_gallery#index"

    get "/news", as: "frontend_news", to: "frontend/frontend_news#index"

    get "/news/:id", as: "frontend_news_item", to: "frontend/frontend_news#get_item"

    get "/careers", as: "frontend_careers", to: "frontend/frontend_careers#index"

    get "/careers/:id/candidate", as: "frontend_careers_candidate_new", to: "frontend/frontend_careers#new_candidate"

    post "/careers/:id/candidate", as: "frontend_careers_candidates", to: "frontend/frontend_careers#create_candidate"

    scope "/contact" do
      get "/branches", as: "frontend_contact_branches", to: "frontend/frontend_contact#branches"
      match "/contact_us", as: "frontend_contact_contact_us", to: "frontend/frontend_contact#contact_us", via: [:get, :post]
    end

    get "/sitemap", as: "frontend_sitemap", to: "frontend/frontend_sitemap#index"

    get "/change_locale/:locale", as: "frontend_change_locale", to: "frontend/frontend_settings#change_locale"
  end

  concern :page_info do
    collection do
      get "/page_info", action: "get_page_info"
      put "/page_info", action: "post_page_info"
    end
  end

  scope "/admin" do
    devise_for :users

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
    put "/general_info/:id", as: "post_general_info", to: "home#post_general_info"
    put "/home/page_info", as: "post_page_info_home", to: "home#post_page_info"
    get "/about", as: "get_about_admin", to: "about#get_about_admin"
    put "/about", as: "post_about_admin", to: "about#post_about_admin"
    put "/about/page_info", as: "post_page_info_about", to: "about#post_page_info"


    mount SevenGallery::Engine, at: "/"
    mount SevenPortfolio::Engine, at: "/news"
    mount SevenCareers::Engine, at: "/"
  end

end
