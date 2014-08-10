require 'rails_helper'

describe 'Logging in', type: :feature do
  context 'with email and password' do
    it 'should prompt user for log in' do
      visit '/'
      expect(page).to have_content('Please log in')
      expect(page).to have_field('E-mail')
      expect(page).to have_field('Password')
      expect(page).to have_link('Log in')
    end

    it 'should display a warning when user coult not be logged in' do
      visit '/'
      click_link 'Log in'
      expect(page).to have_content('Invalid e-mail or password')
    end

    it 'should log user in when valid e-mail and password were provided' do
      UserRegistration.new(email: 'john.doe@example.com', password: 'asdf1234').register

      visit '/'
      fill_in 'E-mail', with: 'john.doe@example.com'
      fill_in 'Password', with: 'asdf1234'
      click_link 'Log in'

      expect(page).to have_content('Invalid e-mail or password')
      expect(current_path).to eq("/dashboard")
    end
  end
end
