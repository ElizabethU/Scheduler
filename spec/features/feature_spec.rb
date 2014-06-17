require 'rails_helper'

describe 'home page navigation' do
  let!(:user)    { create :user }

  it 'works', js: true do
    visit "/"
    click_link "Log In"
    fill_in "email", with: user.email
    fill_in "Password", with: "MyString"
    click_button "Log In"
    expect(current_path).to eq "/"
    click_button "Schedule Meeting"

  end

end