require "application_system_test_case"

class FoodReviewsTest < ApplicationSystemTestCase
  setup do
    @food_review = food_reviews(:one)
  end

  test "visiting the index" do
    visit food_reviews_url
    assert_selector "h1", text: "Food Reviews"
  end

  test "creating a Food review" do
    visit food_reviews_url
    click_on "New Food Review"

    fill_in "Body", with: @food_review.body
    fill_in "Food", with: @food_review.food_id
    fill_in "Rating", with: @food_review.rating
    fill_in "Title", with: @food_review.title
    fill_in "User", with: @food_review.user_id
    click_on "Create Food review"

    assert_text "Food review was successfully created"
    click_on "Back"
  end

  test "updating a Food review" do
    visit food_reviews_url
    click_on "Edit", match: :first

    fill_in "Body", with: @food_review.body
    fill_in "Food", with: @food_review.food_id
    fill_in "Rating", with: @food_review.rating
    fill_in "Title", with: @food_review.title
    fill_in "User", with: @food_review.user_id
    click_on "Update Food review"

    assert_text "Food review was successfully updated"
    click_on "Back"
  end

  test "destroying a Food review" do
    visit food_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Food review was successfully destroyed"
  end
end
