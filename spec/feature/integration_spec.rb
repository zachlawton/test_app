# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'j.k. rowling'
    fill_in 'Price', with: 12.99
    fill_in 'Date published', with: '2001-11-11'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('j.k. rowling')
    expect(page).to have_content(12.99)
    expect(page).to have_content('2001-11-11')
  end

  scenario 'valid inputs 2' do
    visit new_book_path
    fill_in 'Title', with: '1984'
    fill_in 'Author', with: 'George Orwell'
    fill_in 'Price', with: 8.99
    fill_in 'Date published', with: '1949-06-09'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('1984')
    expect(page).to have_content('George Orwell')
    expect(page).to have_content(8.99)
    expect(page).to have_content('1949-06-09')
  end

  scenario 'valid inputs 3' do
    visit new_book_path
    fill_in 'Title', with: 'book test'
    fill_in 'Author', with: 'zach lawton'
    fill_in 'Price', with: 13.22
    fill_in 'Date published', with: '2001-10-10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('book test')
    expect(page).to have_content('zach lawton')
    expect(page).to have_content(13.22)
    expect(page).to have_content('2001-10-10')
  end

  scenario 'valid inputs 4' do
    visit new_book_path
    fill_in 'Title', with: 'testing again'
    fill_in 'Author', with: 'a'
    fill_in 'Price', with: 40.00
    fill_in 'Date published', with: '0001-11-12'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('testing again')
    expect(page).to have_content('a')
    expect(page).to have_content(40.00)
    expect(page).to have_content('0001-11-12')
  end

  scenario 'valid inputs 5' do
    visit new_book_path
    fill_in 'Title', with: 'test int'
    fill_in 'Author', with: 'zach lawton'
    fill_in 'Price', with: 1
    fill_in 'Date published', with: '2001-10-10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('test in')
    expect(page).to have_content('zach lawton')
    expect(page).to have_content(1)
    expect(page).to have_content('2001-10-10')
  end

  scenario 'valid inputs 6' do
    visit new_book_path
    fill_in 'Title', with: 'test int'
    fill_in 'Author', with: 'zach lawton'
    fill_in 'Price', with: 1
    fill_in 'Date published', with: '2001-10-10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('test int')
    expect(page).to have_content('zach lawton')
    expect(page).to have_content(1)
    expect(page).to have_content('2001-10-10')
  end

  scenario 'valid inputs 7' do
    visit new_book_path
    fill_in 'Title', with: 'test small date'
    fill_in 'Author', with: 'zach lawton'
    fill_in 'Price', with: 1
    fill_in 'Date published', with: '0001-01-01'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('test small date')
    expect(page).to have_content('zach lawton')
    expect(page).to have_content(1)
    expect(page).to have_content('0001-01-01')
  end

  scenario 'valid inputs 8' do
    visit new_book_path
    fill_in 'Title', with: 'test big date'
    fill_in 'Author', with: 'zach lawton'
    fill_in 'Price', with: 1
    fill_in 'Date published', with: '9999-01-01'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('test big date')
    expect(page).to have_content('zach lawton')
    expect(page).to have_content(1)
    expect(page).to have_content('9999-01-01')
  end


end
  
