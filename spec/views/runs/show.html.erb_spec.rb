require 'spec_helper'

describe "runs/show.html.erb" do
  before(:each) do
    @run = assign(:run, stub_model(Run,
      :user_id => 1,
      :shoe_id => 1,
      :distance => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
  end
end
