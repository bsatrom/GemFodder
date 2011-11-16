require 'spec_helper'

describe "shoes/index.html.erb" do
  before(:each) do
    assign(:shoes, [
      stub_model(Shoe,
        :name => "Name",
        :user_id => 1,
        :max_mileage => 1,
        :auto_order => false,
        :url => "Url"
      ),
      stub_model(Shoe,
        :name => "Name",
        :user_id => 1,
        :max_mileage => 1,
        :auto_order => false,
        :url => "Url"
      )
    ])
  end

  it "renders a list of shoes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
