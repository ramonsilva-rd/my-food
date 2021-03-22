require 'rails_helper'

RSpec.describe "meals/index", type: :view do
  before(:each) do
    assign(:meals, [
      Meal.create!(
        name: "Name",
        description: "Description",
        price: 2.5,
        category: nil,
        restaurant: nil
      ),
      Meal.create!(
        name: "Name",
        description: "Description",
        price: 2.5,
        category: nil,
        restaurant: nil
      )
    ])
  end

  it "renders a list of meals" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
