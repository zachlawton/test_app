require 'rails_helper'

RSpec.describe "book_users/index", type: :view do
  before(:each) do
    assign(:book_users, [
      BookUser.create!(
        user_id: 2,
        book_id: 3
      ),
      BookUser.create!(
        user_id: 2,
        book_id: 3
      )
    ])
  end

  it "renders a list of book_users" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
