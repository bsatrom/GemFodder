require 'spec_helper'

describe "runs/new.html.erb" do
  before(:each) do
    assign(:run, stub_model(Run,
      :user_id => 1,
      :shoe_id => 1,
      :distance => "9.99"
    ).as_new_record)
  end

  it "renders new run form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => runs_path, :method => "post" do
      assert_select "input#run_user_id", :name => "run[user_id]"
      assert_select "input#run_shoe_id", :name => "run[shoe_id]"
      assert_select "input#run_distance", :name => "run[distance]"
    end
  end
end
