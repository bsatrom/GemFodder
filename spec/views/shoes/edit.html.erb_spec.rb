require 'spec_helper'

describe "shoes/edit.html.erb" do
  before(:each) do
    @shoe = assign(:shoe, stub_model(Shoe,
      :name => "MyString",
      :user_id => 1,
      :max_mileage => 1,
      :auto_order => false,
      :url => "MyString"
    ))
  end

  it "renders the edit shoe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shoes_path(@shoe), :method => "post" do
      assert_select "input#shoe_name", :name => "shoe[name]"
      assert_select "input#shoe_user_id", :name => "shoe[user_id]"
      assert_select "input#shoe_max_mileage", :name => "shoe[max_mileage]"
      assert_select "input#shoe_auto_order", :name => "shoe[auto_order]"
      assert_select "input#shoe_url", :name => "shoe[url]"
    end
  end
end
