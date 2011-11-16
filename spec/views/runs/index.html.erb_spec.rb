require 'spec_helper'

describe "runs/index.html.erb" do
  before(:each) do
    assign(:runs, [
      stub_model(Run,
        :user_id => 1,
        :shoe_id => 1,
        :distance => "9.99"
      ),
      stub_model(Run,
        :user_id => 1,
        :shoe_id => 1,
        :distance => "9.99"
      )
    ])
  end

  it "renders a list of runs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
