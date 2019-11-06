class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    #  1 - get information from the form(in the params)
    @review = Review.new(review_params)

    #  2 - create a new review with that information
    #  3 - get the restaurant from the params
    @restaurant = Restaurant.find(params[:restaurant_id])

    @review.restaurant = @restaurant

    #  4 - associate the review with my restaurant
    #  5 - try to save my review
    #  6 - redirect
      if @review.save
        redirect_to restaurant_path(@restaurant)
      else
        render :new
      end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
