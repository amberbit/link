require 'rails_helper'

describe 'Logging in', type: :feature do
  context 'with email and password' do
    it 'should prompt user for log in' do
      visit '/'
      expect(page).to have_content("Please sign in")
      expect(page).to have_field("E-mail")
      expect(page).to have_field("Password")
    end
  end
end
