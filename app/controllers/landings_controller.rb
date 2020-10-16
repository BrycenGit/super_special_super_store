class LandingsController < ApplicationController

  def index
    @three = Product.three_recent
    @most = Product.most_reviews.first
    render :index
  end
end