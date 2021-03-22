require 'rails_helper'

RSpec.describe "meals/edit", type: :view do
  before(:each) do
    @meal = assign(:meal, Meal.create!(
      name: "MyString",
      description: "MyString",
      price: 1.5,
      category: nil,
      restaurant: nil
    ))
  end

  it "renders the edit meal form" do
    render

    assert_select "form[action=?][method=?]", meal_path(@meal), "post" do

      assert_select "input[name=?]", "meal[name]"

      assert_select "input[name=?]", "meal[description]"

      assert_select "input[name=?]", "meal[price]"

      assert_select "input[name=?]", "meal[category_id]"

      assert_select "input[name=?]", "meal[restaurant_id]"
    end
  end
end
