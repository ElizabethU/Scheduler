require 'rails_helper'

describe 'home page navigation' do
  let!(:user)    { create :user }

  it 'works' do
    visit "/"
    click_link "Sign In"
    fill_in "Email Address", with: user.email
    fill_in "Password", with: "MyString"
    click_button "Sign In"
    expect(current_path).to eq "/"

  end

end