require 'rails_helper'

RSpec.describe "listings/show", :type => :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      :title => "Title",
      :description => "MyText",
      :feature_image => "Feature Image",
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Feature Image/)
    expect(rendered).to match(/State/)
  end
end
