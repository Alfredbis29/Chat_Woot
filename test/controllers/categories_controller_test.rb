require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get categories_url
    assert_response :success
  end

  test "should get new" do
    get new_category_url
    assert_response :success
  end

  test "should create category" do
    assert_difference("Category.count", 1) do
      post categories_url, params: {
        category: {
          name: "Customer Support",
          description: "Articles for customer support workflows."
        }
      }
    end

    assert_redirected_to categories_url
    follow_redirect!
    assert_select "div", /Customer Support/
  end
end
