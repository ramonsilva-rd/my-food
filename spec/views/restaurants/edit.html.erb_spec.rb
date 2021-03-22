require 'rails_helper'

RSpec.describe "restaurants/edit", type: :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
      name: "MyString",
      address: "MyString",
      lat: 1.5,
      lng: 1.5,
      category: nil
    ))
  end

  it "renders the edit restaurant form" do
    render

    assert_select "form[action=?][method=?]", restaurant_path(@restaurant), "post" do

      assert_select "input[name=?]", "restaurant[name]"

      assert_select "input[name=?]", "restaurant[address]"

      assert_select "input[name=?]", "restaurant[lat]"

      assert_select "input[name=?]", "restaurant[lng]"

      assert_select "input[name=?]", "restaurant[category_id]"
    end
  end
end
