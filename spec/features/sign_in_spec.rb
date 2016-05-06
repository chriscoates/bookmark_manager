feature 'User sign-in' do
  scenario 'successful sign-in' do
    sign_up
    sign_in
    expect(current_path).to eq('/links')
    expect(page).to have_content 'Welcome, alice@example.com'
  end
end