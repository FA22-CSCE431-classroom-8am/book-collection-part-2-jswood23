# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '6.98'
    select '1997', from: 'book_published_1i'
    select 'June', from: 'book_published_2i'
    select '26', from: 'book_published_3i'
    click_on 'Create Book'
    visit books_path
    click_on 'Show'
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J.K. Rowling')
    expect(page).to have_content('6.98')
    expect(page).to have_content('1997-06-26')
  end
end

