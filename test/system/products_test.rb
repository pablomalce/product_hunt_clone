require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"

    assert_selector "h1", text: "Awesome Products"
    assert_selector ".product", count: Product.count
  end

  test "a signed in user can create a product" do
    login_as users(:user)


    visit '/Products/new'

    fill_in "product_name", whith: "Empanada"
    fill_in "product_tagline", whith: "Will change your world"

    click_on "Create Product"

    assert_equal root_path, page.current_path
    asset_text "Will change your world"
  end
end
