class ReviewsController < ApplicationController
  include ReviewsHelper

  def create
    @review = Review.new(review_params)
    @review.product_id = params[:product_id]
  
    @review.save

    redirect_to product_path(@review.product)
  end
  
  
end
