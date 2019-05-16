class ReviewsController < ApplicationController

  def new
    @reviews = Review.new
    @restaurants = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.create(review_params)
    redirect_to restaurants_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
