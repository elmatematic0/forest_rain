module ReviewsHelper
  def review_params
    params.require(:review).permit(:author_name, :body)
  end
end
