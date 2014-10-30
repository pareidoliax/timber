require 'rails_helper'

RSpec.describe "lumberjills/new", :type => :view do
  before(:each) do
    assign(:lumberjill, Lumberjill.new(
      :name => "MyString",
      :lumberjack => nil,
      :the_one => nil
    ))
  end

  it "renders new lumberjill form" do
    render

    assert_select "form[action=?][method=?]", lumberjills_path, "post" do

      assert_select "input#lumberjill_name[name=?]", "lumberjill[name]"

      assert_select "input#lumberjill_lumberjack_id[name=?]", "lumberjill[lumberjack_id]"

      assert_select "input#lumberjill_the_one_id[name=?]", "lumberjill[the_one_id]"
    end
  end
end
