require 'rails_helper'

describe 'Logging in', type: :feature do
  context 'with email and password' do
    it 'should prompt user for log in' do
      visit '/'
      expect(page).to have_content("Please log in")
      expect(page).to have_field("E-mail")
      expect(page).to have_field("Password")
      expect(page).to have_link("Log in")
    end
  end
end
