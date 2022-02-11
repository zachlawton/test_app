require 'rails_helper'

RSpec.describe "book_users/show", type: :view do
  before(:each) do
    @book_user = assign(:book_user, BookUser.create!(
      user_id: 2,
      book_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
