require 'rails_helper'

RSpec.describe "book_users/edit", type: :view do
  before(:each) do
    @book_user = assign(:book_user, BookUser.create!(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders the edit book_user form" do
    render

    assert_select "form[action=?][method=?]", book_user_path(@book_user), "post" do

      assert_select "input[name=?]", "book_user[user_id]"

      assert_select "input[name=?]", "book_user[book_id]"
    end
  end
end
