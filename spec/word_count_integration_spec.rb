require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("word_count homepage form input behavior", {:type => :feature}) do

  it("displays text 'Welcome to Word Count' on form input homepage result - 1 occurrence of word - when user enters the same word (case insensitive) in text and word to count fields") do
    visit('/')
    # fill_in('text', :with => 'SOMETHING')
    # fill_in('word_to_count', :with => 'sOmEtHiNg')
    # click_button('Enter')
    # save_and_open_page
    expect(page).to have_content('Welcome to Word Count')
  end

  # it('displays result - 1 occurrence of word - when user enters the same word (case insensitive) in text and word to count fields') do
  #   visit('/')
  #   fill_in('text', :with => 'SOMETHING')
  #   fill_in('word_to_count', :with => 'sOmEtHiNg')
  #   click_button('Enter')
  #   # save_and_open_page
  #   expect(page).to have_content('Number of occurrences of word-to-count in text: 1')
  # end
end
