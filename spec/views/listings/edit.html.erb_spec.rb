require 'rails_helper'

RSpec.describe "listings/edit", :type => :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      :title => "MyString",
      :description => "MyText",
      :feature_image => "MyString",
      :state => "MyString"
    ))
  end

  it "renders the edit listing form" do
    render

    assert_select "form[action=?][method=?]", listing_path(@listing), "post" do

      assert_select "input#listing_title[name=?]", "listing[title]"

      assert_select "textarea#listing_description[name=?]", "listing[description]"

      assert_select "input#listing_feature_image[name=?]", "listing[feature_image]"

      assert_select "input#listing_state[name=?]", "listing[state]"
    end
  end
end
