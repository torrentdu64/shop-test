class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
  end
end
