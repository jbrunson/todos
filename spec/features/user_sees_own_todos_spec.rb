require 'rails_helper'

feature "User sees own todos" do
  scenario "Doesn't see others todos" do
    Todo.create!(title: "Buy milk", email: "someone_else@example.com")

    sign_in_as "someone1@example.com"
    expect(page).not_to display_todo "Buy milk"
  end
end