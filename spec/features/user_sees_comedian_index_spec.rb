require 'pry'

describe "user sees comedian index" do
  context "visit /comedians" do
    visit '/comedians'

    expect(current_path).to eq('/comedians')
    expect(page).to have_content('Name:')
    expect(page).to have_content('Age:')
  end
end
