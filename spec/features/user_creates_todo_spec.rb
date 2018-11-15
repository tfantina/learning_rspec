require "rails_helper"

feature "User creates todo" do
  scenario "Successfully" do
    visit root_path
    click_on "Add new todo"
    fill_in "Title", with: "Buy Chocolate"
    click_on "Submit"
    expect(page).to have_css ".todos li", text: 'Buy Chocolate'
  end
end
