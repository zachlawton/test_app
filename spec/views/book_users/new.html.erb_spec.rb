require 'rails_helper'

RSpec.describe "book_users/new", type: :view do
  before(:each) do
    assign(:book_user, BookUser.new(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders new book_user form" do
    render

    assert_select "form[action=?][method=?]", book_users_path, "post" do

      assert_select "input[name=?]", "book_user[user_id]"

      assert_select "input[name=?]", "book_user[book_id]"
    end
  end
end
