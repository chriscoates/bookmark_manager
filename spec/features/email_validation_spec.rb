feature 'Email validation' do
  scenario 'A blank email address cannot be entered' do
    expect{ blank_email }.not_to change(User, :count)
     expect(page).to have_content('Email must not be blank')
  end

  scenario 'An invalid email address cannot be entered' do
    expect{ invalid_email }.not_to change(User, :count)
    expect(page).to have_content('Email has an invalid format')
  end

  scenario 'Duplicate email' do
    sign_up
    # expect(current_path).to eq('/users')
    expect{sign_up}.not_to change(User, :count)
    expect(page).to have_content 'Email is already taken'
  end
end
