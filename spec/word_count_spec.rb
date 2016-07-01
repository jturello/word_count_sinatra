require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('STRING#TEMPLATE', {:type => :feature}) do
  it('DOES SOMETHING...') do
    visit('/')
    fill_in('TEMPLATE', :with => 'SOMETHING')
    click_button('Enter')
    # save_and_open_page
    expect(page).to have_content('SOME RESULT')
  end
end
