RSpec.describe "User registration", type: :system do
  it "allows a user to sign up and redirects to the root path" do
    visit signup_path
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Пароль', with: 'password'
    fill_in 'Подтвердите пароль', with: 'password'
    click_button 'Зарегистрироваться'
    expect(page).to have_content('Регистрация успешна!')
    expect(current_path).to eq(root_path)
  end
end
