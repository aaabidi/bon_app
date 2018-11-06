class FoodReviewsController < ApplicationController
  def create
    @food = Food.find(params[:foods_id])
    @food_review = @food.food_reviews.create(food_review_params)
    redirect_to food_path
  end

  private
    def food_review_params
      params.require(:food_review).permit(:reviewer,:rating,:tags)
    end
end
