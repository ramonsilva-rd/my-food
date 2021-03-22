require 'rails_helper'

RSpec.describe "meals/new", type: :view do
  before(:each) do
    assign(:meal, Meal.new(
      name: "MyString",
      description: "MyString",
      price: 1.5,
      category: nil,
      restaurant: nil
    ))
  end

  it "renders new meal form" do
    render

    assert_select "form[action=?][method=?]", meals_path, "post" do

      assert_select "input[name=?]", "meal[name]"

      assert_select "input[name=?]", "meal[description]"

      assert_select "input[name=?]", "meal[price]"

      assert_select "input[name=?]", "meal[category_id]"

      assert_select "input[name=?]", "meal[restaurant_id]"
    end
  end
end
