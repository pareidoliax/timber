require 'rails_helper'

RSpec.describe "lumberjacks/edit", :type => :view do
  before(:each) do
    @lumberjack = assign(:lumberjack, Lumberjack.create!(
      :name => "MyString",
      :lumberjill => nil,
      :the_one => nil
    ))
  end

  it "renders the edit lumberjack form" do
    render

    assert_select "form[action=?][method=?]", lumberjack_path(@lumberjack), "post" do

      assert_select "input#lumberjack_name[name=?]", "lumberjack[name]"

      assert_select "input#lumberjack_lumberjill_id[name=?]", "lumberjack[lumberjill_id]"

      assert_select "input#lumberjack_the_one_id[name=?]", "lumberjack[the_one_id]"
    end
  end
end
