require "rails_helper"

#homepage smoketest
feature "User visits hompeage" do
  scenario "sucessfully" do
    visit root_path
    expect(page).to have_css 'h1', text: 'Todos'
  end
end
