require 'rails_helper'

RSpec.describe "lumberjacks/show", :type => :view do
  before(:each) do
    @lumberjack = assign(:lumberjack, Lumberjack.create!(
      :name => "Name",
      :lumberjill => nil,
      :the_one => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
