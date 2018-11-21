require 'test_helper'

class FoodReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_review = food_reviews(:one)
  end

  test "should get index" do
    get food_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_food_review_url
    assert_response :success
  end

  test "should create food_review" do
    assert_difference('FoodReview.count') do
      post food_reviews_url, params: { food_review: { body: @food_review.body, food_id: @food_review.food_id, rating: @food_review.rating, title: @food_review.title, user_id: @food_review.user_id } }
    end

    assert_redirected_to food_review_url(FoodReview.last)
  end

  test "should show food_review" do
    get food_review_url(@food_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_review_url(@food_review)
    assert_response :success
  end

  test "should update food_review" do
    patch food_review_url(@food_review), params: { food_review: { body: @food_review.body, food_id: @food_review.food_id, rating: @food_review.rating, title: @food_review.title, user_id: @food_review.user_id } }
    assert_redirected_to food_review_url(@food_review)
  end

  test "should destroy food_review" do
    assert_difference('FoodReview.count', -1) do
      delete food_review_url(@food_review)
    end

    assert_redirected_to food_reviews_url
  end
end
