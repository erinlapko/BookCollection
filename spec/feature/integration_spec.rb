# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('JK Rowling')
    end
  end

  RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Price', with: 19.99
      click_on 'Create Book'
      visit books_path
      expect(page).to have_content(19.99)
    end
  end

  RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      select "2013", :from => "book_publishedDate_1i"
      select "02", :from => "book_publishedDate_2i"
      select "02", :from => "book_publishedDate_3i"
      click_on 'Create Book'        
      visit books_path
      expect(page).to have_content(2013-02-02 )
    end
  end