feature 'Email validation' do
  scenario 'A blank email address cannot be entered' do
    expect{ blank_email }.not_to change(User, :count)
  end

  scenario 'An invalid email address cannot be entered' do
    expect{ invalid_email }.not_to change(User, :count)
  end
end