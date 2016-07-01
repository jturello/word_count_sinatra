require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("word_count form input homepage", {:type => :feature}) do

  it('displays text: Welcome to Word Count') do
    visit('/')
    expect(page).to have_content('Welcome to Word Count')
  end

  it('wraps Welcome to Word Count page title text in h1 tag') do
    visit('/')
    expect(page.find('h1', :text => 'Welcome to Word Count'))
  end

  it('displays result - occurrences of word in text: 1 - when text and word are the same (case insensitive)') do
    visit('/')
    fill_in('text', :with => 'SOMETHING')
    fill_in('word_to_count', :with => 'sOmEtHiNg')
    click_button('Enter')
    expect(page).to have_content('Occurrences of word in text: 1')
  end

  it('displays correct count when multiple occurrences of word (in this test, 2) exist in text') do
    visit('/')
    fill_in('text', :with => "Like, you're not likely to like this dormitory-like life we lead here.")
    fill_in('word_to_count', :with => 'like')
    click_button('Enter')
    expect(page).to have_content('Occurrences of word in text: 2')
  end

end
