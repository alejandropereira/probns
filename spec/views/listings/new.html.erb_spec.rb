require 'rails_helper'

RSpec.describe "listings/new", :type => :view do
  before(:each) do
    assign(:listing, Listing.new(
      :title => "MyString",
      :description => "MyText",
      :feature_image => "MyString",
      :state => "MyString"
    ))
  end

  it "renders new listing form" do
    render

    assert_select "form[action=?][method=?]", listings_path, "post" do

      assert_select "input#listing_title[name=?]", "listing[title]"

      assert_select "textarea#listing_description[name=?]", "listing[description]"

      assert_select "input#listing_feature_image[name=?]", "listing[feature_image]"

      assert_select "input#listing_state[name=?]", "listing[state]"
    end
  end
end
