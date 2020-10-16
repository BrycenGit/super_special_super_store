class LandingsController < ApplicationController

  def index
    @most = Product.most_reviews.first
    render :index
  end
end