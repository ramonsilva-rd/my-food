require 'rails_helper'

RSpec.describe "restaurants/index", type: :view do
  before(:each) do
    assign(:restaurants, [
      Restaurant.create!(
        name: "Name",
        address: "Address",
        lat: 2.5,
        lng: 3.5,
        category: nil
      ),
      Restaurant.create!(
        name: "Name",
        address: "Address",
        lat: 2.5,
        lng: 3.5,
        category: nil
      )
    ])
  end

  it "renders a list of restaurants" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
