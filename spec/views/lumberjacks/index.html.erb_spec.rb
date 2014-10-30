require 'rails_helper'

RSpec.describe "lumberjacks/index", :type => :view do
  before(:each) do
    assign(:lumberjacks, [
      Lumberjack.create!(
        :name => "Name",
        :lumberjill => nil,
        :the_one => nil
      ),
      Lumberjack.create!(
        :name => "Name",
        :lumberjill => nil,
        :the_one => nil
      )
    ])
  end

  it "renders a list of lumberjacks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
