require 'rails_helper'

feature "User marks todo incomplete" do
  scenario "successfully" do
    sign_in

    create_todo "Buy milk"

    click_on "Mark complete", match: :first
    click_on "Incomplete", match: :prefer_exact

    expect(page).not_to have_content "Incomplete"
    expect(page).to display_todo "Buy milk"
  end
end