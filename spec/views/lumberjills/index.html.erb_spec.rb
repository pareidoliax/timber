require 'rails_helper'

RSpec.describe "lumberjills/index", :type => :view do
  before(:each) do
    assign(:lumberjills, [
      Lumberjill.create!(
        :name => "Name",
        :lumberjack => nil,
        :the_one => nil
      ),
      Lumberjill.create!(
        :name => "Name",
        :lumberjack => nil,
        :the_one => nil
      )
    ])
  end

  it "renders a list of lumberjills" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
