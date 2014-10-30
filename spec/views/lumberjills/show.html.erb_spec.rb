require 'rails_helper'

RSpec.describe "lumberjills/show", :type => :view do
  before(:each) do
    @lumberjill = assign(:lumberjill, Lumberjill.create!(
      :name => "Name",
      :lumberjack => nil,
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
